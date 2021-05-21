class EmployeesController < ApplicationController

    def index
        @employees = Employee.all
        render :index
    end

    def show
        @employee = Employee.find(params[:id])
        render :show
    end

    def new
        @employee = Employee.new
        render :new
    end

    def create
        @employee = Employee.create(employee_params)
        redirect_to employee_path(@employee)
    end

    def edit
        @employee = Employee.find(params[:id])
        render :edit
    end

    def update
        @employee = Employee.find(params[:id])
        @employee.update(employee_params)
        redirect_to employee_path(@employee)
    end

    private
    
    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id)
    end
end
