class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.create(:bookingparams)
    if @booking.save
      redirect_to day_path(@day)
    else
      render :new
    end
  end
end
