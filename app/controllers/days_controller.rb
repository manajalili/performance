class DaysController < ApplicationController
  def index
    @days = Day.all
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

  private

  def day_params
    params.require(:day).permit(:date, :title)
  end
end
