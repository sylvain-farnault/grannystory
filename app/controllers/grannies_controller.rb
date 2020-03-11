class GranniesController < ApplicationController
before_action :set_granny, only: [:show, :edit, :update, :destroy]
skip_before_action :authenticate_user!, only: [:show, :index]

  def index
    @grannies = Granny.all
  end

  def create
    @granny = Granny.new(granny_params)
    @granny.user = current_user
    if @granny.save
      params[:granny][:passion_ids].drop(1).each do |passion_id|
        GrannyPassion.create(granny: @granny, passion: Passion.find(passion_id))
      end
      redirect_to granny_path(@granny)
    else
      render :new
    end
  end

  def new
    @granny = Granny.new
    @passions = Passion.all
  end

  def show
    @booking = Booking.new
  end

  def destroy
    @granny = Granny.find(params[:id])
    if @granny.user != current_user
    render :show, alert: "Don't Touch My Granny 👵🏻"
  else
    @granny.destroy
    redirect_to grannies_path
  end
  end

  def edit
   if @granny.user != current_user
    redirect_to granny_path(@granny), alert: "Don't Touch My Granny 👵🏻"
  end
    ;end


  def update
    if @granny.update(granny_params)
      @actual_passions = @granny.passions
      @actual_passions.each do |passion|
        if !(params[:granny][:passion_ids].drop(1).include? passion.id)
          granny_passion = GrannyPassion.where(granny: @granny, passion: passion)
          granny_passion[0].destroy
        end
      end
      params[:granny][:passion_ids].drop(1).each do |passion_id|
        if !(@actual_passions.include? Passion.find(passion_id))
          GrannyPassion.create(granny: @granny, passion: Passion.find(passion_id))
        end
      end
      redirect_to granny_path(@granny)
    else
      render :edit
    end
  end

private

def set_granny
    @granny = Granny.find(params[:id])
  end


def granny_params
    params.require(:granny).permit(:name, :address, :birth_date, :price, :passions)
  end


end
