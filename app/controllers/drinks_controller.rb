class DrinksController < ApplicationController

  def index
    @drink = Drink.new
    @drinks = Drink.all
  end

  def create
    @drink = Drink.create(drink_params)
    if @drink.save
      redirect_to drinks_path
    else
      render :index
    end
  end

  def show
    @drink = Drink.find(params[:id])
  end

  def edit
    @drink = Drink.find(params[:id])
  end

  def update
    @drink = Drink.find(params[:id])
    @drink.update_attributes!(drink_params)

    redirect_to drink_path(@drink)
  end

  private
  def drink_params
    params.require(:drink).permit(:brand, :flavor)
  end
end