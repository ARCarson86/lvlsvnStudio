require 'test_helper'

class ProjectsTestimonialsControllerTest < ActionController::TestCase
  setup do
    @projects_testimonial = projects_testimonials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projects_testimonials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create projects_testimonial" do
    assert_difference('ProjectsTestimonial.count') do
      post :create, projects_testimonial: {  }
    end

    assert_redirected_to projects_testimonial_path(assigns(:projects_testimonial))
  end

  test "should show projects_testimonial" do
    get :show, id: @projects_testimonial
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @projects_testimonial
    assert_response :success
  end

  test "should update projects_testimonial" do
    patch :update, id: @projects_testimonial, projects_testimonial: {  }
    assert_redirected_to projects_testimonial_path(assigns(:projects_testimonial))
  end

  test "should destroy projects_testimonial" do
    assert_difference('ProjectsTestimonial.count', -1) do
      delete :destroy, id: @projects_testimonial
    end

    assert_redirected_to projects_testimonials_path
  end
end
