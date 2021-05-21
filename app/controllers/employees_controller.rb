class EmployeesController < ApplicationController

    before_action :find_emp, only: [:show, :edit, :update]

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
        @employee = Employee.create(emp_params)
        redirect_to employee_path(@employee.id)
    end

    def edit
        @dogs = Dog.all
        render :edit
    end

    def update 
        @employee.update(emp_params)
        redirect_to employee_path(@employee)
    end

    private

        def emp_params
            params.require(:employees).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id)
        end

        def find_emp
            @employee = Employee.find(params[:id])
        end
end
