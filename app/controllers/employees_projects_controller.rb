class EmployeesProjectsController < ApplicationController
  before_action :set_employees_project, only: [:show, :edit, :update, :destroy]

  # GET /employees_projects
  # GET /employees_projects.json
  def index
    @employees_projects = EmployeesProject.all
  end

  # GET /employees_projects/1
  # GET /employees_projects/1.json
  def show
  end

  # GET /employees_projects/new
  def new
    @employees_project = EmployeesProject.new
  end

  # GET /employees_projects/1/edit
  def edit
  end

  # POST /employees_projects
  # POST /employees_projects.json
  def create
    @employees_project = EmployeesProject.new(employees_project_params)

    respond_to do |format|
      if @employees_project.save
        format.html { redirect_to @employees_project, notice: 'Employees project was successfully created.' }
        format.json { render :show, status: :created, location: @employees_project }
      else
        format.html { render :new }
        format.json { render json: @employees_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employees_projects/1
  # PATCH/PUT /employees_projects/1.json
  def update
    respond_to do |format|
      if @employees_project.update(employees_project_params)
        format.html { redirect_to @employees_project, notice: 'Employees project was successfully updated.' }
        format.json { render :show, status: :ok, location: @employees_project }
      else
        format.html { render :edit }
        format.json { render json: @employees_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employees_projects/1
  # DELETE /employees_projects/1.json
  def destroy
    @employees_project.destroy
    respond_to do |format|
      format.html { redirect_to employees_projects_url, notice: 'Employees project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employees_project
      @employees_project = EmployeesProject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employees_project_params
      params[:employees_project]
    end
end
