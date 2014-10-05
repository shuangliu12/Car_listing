class CarsController < ApplicationController
  def index
    @cars = Car.includes(:manufacturer)
  end

  def new
    @car = Car.new
    @manufacturers = Manufacturer.all
  end

  def create
    @car = Car.new(car_params)
    @manufacturers = Manufacturer.all
    if @car.save
      redirect_to cars_path
      flash[:success] = "Your car has been saved successfully"
    else
      flash[:notice] = "Something went wrong."
      render 'new'
    end
  end

  private

  def car_params
    params.require(:car).permit(:color, :mileage, :year, :description,
      :manufacturer_id)
  end
end
