class DaysController < ApplicationController
  def index
    @days = Day.all.order("date DESC")
    @days = Day.geocoded

    @markers = @days.map do |day|
      {
        lat: flat.latitude,
        lng: flat.longitude
      }
    end
  end

  def show
    @day = Day.find(params[:id])
    @bookings = @day.bookings
  end

  def new
    @day = Day.new
  end

  def create
    @day = Day.create(day_params)
    if @day.save
      redirect_to day_path(@day)
    else
      render :new
    end
  end

  def edit
    @day = Day.find(params[:id])
  end

  def update
    @day = Day.find(params[:id])
    @day.update(day_params)
    if @day.save
      redirect_to days_path
    else
      render :new
    end
  end

  def destroy
    @day = Day.find(params[:id])
    @day.destroy
    redirect_to days_path
  end

  private

  def day_params
    params.require(:day).permit(:date, :title, photos: [])
  end
end
