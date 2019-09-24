class DogsController < ApplicationController
    before_action :find_dog, only: [ :show, :edit, :update, :destroy ]

    def index
      @dogs = Dog.all
      @sorted_dogs = @dogs.sort_by{|dog| dog.employees.length}
    end

    def show
    end

    def new
    
    end

    def create
    
    end

    def edit
    end

    def update
    
    end

    def destroy
    
    end

    private

    def find_dog
        @dog = Dog.find(params[:id])
    end 

    def dog_params
        params.require(:dog).permit(:name, :breed, :age)
    end

end
