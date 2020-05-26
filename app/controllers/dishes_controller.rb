class DishesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:index, :show, :destroy]
  before_action :set_dish, only: [:show, :edit, :update, :destroy]

  def index
    @dishes = Dish.all
  end

  def show
  end

  def new
    @dish = Dish.new(dish_params)
  end

  def create
    @dish = Dish.new(dish_params)
    @dish.save
    redirect_to dish_path(@dish)
  end

  def edit
  end

  def update
    @dish.update(dish_params)
  end

  def destroy
    @dish.destroy
    redirect_to dishes_path
  end


  private
  def dish_params
    params.require(:dish).permit(:name,:description, :user_id)
  end

  def set_dish
    @dish = Dish.find(params[:id])
  end


end
