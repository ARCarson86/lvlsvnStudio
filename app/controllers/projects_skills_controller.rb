class ProjectsSkillsController < ApplicationController
  before_action :set_projects_skill, only: [:show, :edit, :update, :destroy]

  # GET /projects_skills
  # GET /projects_skills.json
  def index
    @projects_skills = ProjectsSkill.all
  end

  # GET /projects_skills/1
  # GET /projects_skills/1.json
  def show
  end

  # GET /projects_skills/new
  def new
    @projects_skill = ProjectsSkill.new
  end

  # GET /projects_skills/1/edit
  def edit
  end

  # POST /projects_skills
  # POST /projects_skills.json
  def create
    @projects_skill = ProjectsSkill.new(projects_skill_params)

    respond_to do |format|
      if @projects_skill.save
        format.html { redirect_to @projects_skill, notice: 'Projects skill was successfully created.' }
        format.json { render :show, status: :created, location: @projects_skill }
      else
        format.html { render :new }
        format.json { render json: @projects_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects_skills/1
  # PATCH/PUT /projects_skills/1.json
  def update
    respond_to do |format|
      if @projects_skill.update(projects_skill_params)
        format.html { redirect_to @projects_skill, notice: 'Projects skill was successfully updated.' }
        format.json { render :show, status: :ok, location: @projects_skill }
      else
        format.html { render :edit }
        format.json { render json: @projects_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects_skills/1
  # DELETE /projects_skills/1.json
  def destroy
    @projects_skill.destroy
    respond_to do |format|
      format.html { redirect_to projects_skills_url, notice: 'Projects skill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_projects_skill
      @projects_skill = ProjectsSkill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def projects_skill_params
      params[:projects_skill]
    end
end
