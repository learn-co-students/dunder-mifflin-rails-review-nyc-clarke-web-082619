class DogsController < ApplicationController

    before_action :find_dog, only: [:show]

    def index
        @dogs = Dog.all
        render :index
    end

    def show
        @employees = @dog.employees
        render :show
    end
    
    def new
        render :new
    end

    def create
        @dog = Dog.create(dog_params)
        redirect_to dog_path(@dog)
    end

    private

        def dog_params
            params.require(:dogs).permit(:name, :breed, :age)
        end

        def find_dog
            @dog = Dog.find(params[:id])
        end

end
