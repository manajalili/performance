class DaysController < ApplicationController
  def index
    @days = Day.all
  end

  def show
    @day = Day.find(params[:id])
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
  end

  private

  def day_params
    params.require(:day).permit(:date, :title)
  end
end
