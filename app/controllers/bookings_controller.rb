class BookingsController < ApplicationController
  def new
    @day = Day.find(params[:day_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new[:bookingparams]
    @day = Day.find(params[:day_id])
    @booking.day = @day
    if @booking.save
      redirect_to day_path(@day)
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to day_path(@day)
  end

  private
  def bookingparams
    params.require(:booking).permit(:duration, :activity_id)
  end
end
