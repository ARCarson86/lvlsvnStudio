require 'test_helper'

class EmployeesSkillsControllerTest < ActionController::TestCase
  setup do
    @employees_skill = employees_skills(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employees_skills)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employees_skill" do
    assert_difference('EmployeesSkill.count') do
      post :create, employees_skill: {  }
    end

    assert_redirected_to employees_skill_path(assigns(:employees_skill))
  end

  test "should show employees_skill" do
    get :show, id: @employees_skill
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employees_skill
    assert_response :success
  end

  test "should update employees_skill" do
    patch :update, id: @employees_skill, employees_skill: {  }
    assert_redirected_to employees_skill_path(assigns(:employees_skill))
  end

  test "should destroy employees_skill" do
    assert_difference('EmployeesSkill.count', -1) do
      delete :destroy, id: @employees_skill
    end

    assert_redirected_to employees_skills_path
  end
end
