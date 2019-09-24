class EmployeesController < ApplicationController
    before_action :find_employee, only: [ :show, :edit, :update, :destroy ]

    def index
      @employees = Employee.all
    end

    def show
    end

    def new
      @employee = Employee.new
      @dogs = Dog.all 
    end

    def create
        @employee = Employee.new(employee_params)
        if @employee.save
            redirect_to employee_path(@employee)
        else  
            redirect_to new_employee_path
        end
    end

    def edit
        @dogs = Dog.all
    end

    def update
        if @employee.update(employee_params)
            redirect_to employee_path(@employee)
        else  
            redirect_to edit_employee_path
        end
    
    end

    private

    def find_employee
        @employee = Employee.find(params[:id])
    end 

    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :alias, :office, :title, :dog_id, :img_url)
    end

end
