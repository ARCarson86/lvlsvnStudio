class EmployeesSkillsController < ApplicationController
  before_action :set_employees_skill, only: [:show, :edit, :update, :destroy]

  # GET /employees_skills
  # GET /employees_skills.json
  def index
    @employees_skills = EmployeesSkill.all
  end

  # GET /employees_skills/1
  # GET /employees_skills/1.json
  def show
  end

  # GET /employees_skills/new
  def new
    @employees_skill = EmployeesSkill.new
  end

  # GET /employees_skills/1/edit
  def edit
  end

  # POST /employees_skills
  # POST /employees_skills.json
  def create
    @employees_skill = EmployeesSkill.new(employees_skill_params)

    respond_to do |format|
      if @employees_skill.save
        format.html { redirect_to @employees_skill, notice: 'Employees skill was successfully created.' }
        format.json { render :show, status: :created, location: @employees_skill }
      else
        format.html { render :new }
        format.json { render json: @employees_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employees_skills/1
  # PATCH/PUT /employees_skills/1.json
  def update
    respond_to do |format|
      if @employees_skill.update(employees_skill_params)
        format.html { redirect_to @employees_skill, notice: 'Employees skill was successfully updated.' }
        format.json { render :show, status: :ok, location: @employees_skill }
      else
        format.html { render :edit }
        format.json { render json: @employees_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employees_skills/1
  # DELETE /employees_skills/1.json
  def destroy
    @employees_skill.destroy
    respond_to do |format|
      format.html { redirect_to employees_skills_url, notice: 'Employees skill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employees_skill
      @employees_skill = EmployeesSkill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employees_skill_params
      params[:employees_skill]
    end
end
