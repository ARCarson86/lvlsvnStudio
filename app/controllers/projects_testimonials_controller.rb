class ProjectsTestimonialsController < ApplicationController
  before_action :set_projects_testimonial, only: [:show, :edit, :update, :destroy]

  # GET /projects_testimonials
  # GET /projects_testimonials.json
  def index
    @projects_testimonials = ProjectsTestimonial.all
  end

  # GET /projects_testimonials/1
  # GET /projects_testimonials/1.json
  def show
  end

  # GET /projects_testimonials/new
  def new
    @projects_testimonial = ProjectsTestimonial.new
  end

  # GET /projects_testimonials/1/edit
  def edit
  end

  # POST /projects_testimonials
  # POST /projects_testimonials.json
  def create
    @projects_testimonial = ProjectsTestimonial.new(projects_testimonial_params)

    respond_to do |format|
      if @projects_testimonial.save
        format.html { redirect_to @projects_testimonial, notice: 'Projects testimonial was successfully created.' }
        format.json { render :show, status: :created, location: @projects_testimonial }
      else
        format.html { render :new }
        format.json { render json: @projects_testimonial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects_testimonials/1
  # PATCH/PUT /projects_testimonials/1.json
  def update
    respond_to do |format|
      if @projects_testimonial.update(projects_testimonial_params)
        format.html { redirect_to @projects_testimonial, notice: 'Projects testimonial was successfully updated.' }
        format.json { render :show, status: :ok, location: @projects_testimonial }
      else
        format.html { render :edit }
        format.json { render json: @projects_testimonial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects_testimonials/1
  # DELETE /projects_testimonials/1.json
  def destroy
    @projects_testimonial.destroy
    respond_to do |format|
      format.html { redirect_to projects_testimonials_url, notice: 'Projects testimonial was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_projects_testimonial
      @projects_testimonial = ProjectsTestimonial.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def projects_testimonial_params
      params[:projects_testimonial]
    end
end
