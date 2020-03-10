class GrannyPassionsController < ApplicationController
  def create
    @granny_passion = GrannyPassion.new(granny_passion_params)
    @granny = Granny.find(params[:granny_id])
    @granny_passion.granny = @granny
    if @granny_passion.save
      redirect_to granny_path(@granny)
    else
      render 'grannys/show'
    end
  end

  def destroy
    @passion = Passion.find(params[:id])
    @passion.destroy
    redirect_to granny_path(Granny.find(@passion.granny.id))
  end

  private

  def granny_passion_params
    params.require(:granny_passion).permit(:passion_id)
  end


end
