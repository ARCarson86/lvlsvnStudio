require 'test_helper'

class ProjectsSkillsControllerTest < ActionController::TestCase
  setup do
    @projects_skill = projects_skills(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projects_skills)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create projects_skill" do
    assert_difference('ProjectsSkill.count') do
      post :create, projects_skill: {  }
    end

    assert_redirected_to projects_skill_path(assigns(:projects_skill))
  end

  test "should show projects_skill" do
    get :show, id: @projects_skill
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @projects_skill
    assert_response :success
  end

  test "should update projects_skill" do
    patch :update, id: @projects_skill, projects_skill: {  }
    assert_redirected_to projects_skill_path(assigns(:projects_skill))
  end

  test "should destroy projects_skill" do
    assert_difference('ProjectsSkill.count', -1) do
      delete :destroy, id: @projects_skill
    end

    assert_redirected_to projects_skills_path
  end
end
