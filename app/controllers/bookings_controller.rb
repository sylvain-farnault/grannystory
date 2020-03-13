class BookingsController < ApplicationController

def create
    @booking = Booking.new(bookings_params)
    @granny = Granny.find(params[:granny_id])
    @booking.granny = @granny
    @booking.user = current_user
    @booking.price = @granny.price * @booking.duration
      if @booking.save
      redirect_to granny_path(@granny), notice: "You 've Booked a Granny 👵🏻"
    else
      render 'grannies/show'
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to granny_path
  end

  private

  def bookings_params
    params.require(:booking).permit(:start_date, :duration)
  end
end
