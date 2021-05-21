class EmployeesController < ApplicationController

    before_action :find_employee, only: [:edit, :show, :update]
    def index 
        @employees = Employee.all
        render :index
    end

    def new
        @employee = Employee.new
        @dogs = Dog.all
        render :new
    end

    def create
        @employee = Employee.create(params_employee)
        redirect_to employee_path(@employee)
    end

    def edit
        @dogs = Dog.all
        render :edit
    end

    def update
        @employee.update(params_employee)
        redirect_to employee_path(@employee)
    end

    def show
        render :show 
    end

    private
    def find_employee
        @employee = Employee.find(params[:id])
    end

    def params_employee
        params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id)
    end
end
