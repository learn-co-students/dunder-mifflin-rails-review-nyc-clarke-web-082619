class EmployeesController < ApplicationController
  before_action :find_employee, only: [:edit, :show, :destroy, :update]
  validates :title, uniqueness: true
  validates :alias, uniqueness: true
  
  def index
    @employees = Employee.all 
  end

  def new
    @employee = Employee.new 
  end

  def create
    @employee = Employee.new(employee_params(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id))
    @employee.save
    redirect_to employee_path(@employee)
  end

  def show
  end

  def edit
  end

  def update
    @employee.update(employee_params(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id))
    redirect_to employee_path(@employee)
  end

  def destroy
    @employee.destroy
    redirect_to employees_path
  end

  private

  def find_employee
    @employee = Employee.find(params[:id])
  end

  def employee_params(*args)
    params.require(:employee).permit(*args)
  end

end
