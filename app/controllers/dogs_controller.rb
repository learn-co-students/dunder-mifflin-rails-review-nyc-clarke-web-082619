class DogsController < ApplicationController
  before_action :find_dog, only: [:edit, :show, :update, :destroy]

  def index
    @dogs = Dog.all 
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(dog_params(:name, :breed, :age))
    @dog.save 
    redirect_to dog_path(@dog)
  end

  def show
  end

  def edit
  end

  def update 
    @dog.update(dog_params(:name, :breed, :age))
    redirect_to dog_path(@dog)
  end

  def destroy 
    @dog.destroy 
    redirect_to dog_path
  end
  
  private

  def find_dog
    @dog = Dog.find(params[:id])
  end

  def dog_params(*args)
    params.require(:dog).permit(*args)
  end
end
