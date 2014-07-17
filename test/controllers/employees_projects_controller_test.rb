require 'test_helper'

class EmployeesProjectsControllerTest < ActionController::TestCase
  setup do
    @employees_project = employees_projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employees_projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employees_project" do
    assert_difference('EmployeesProject.count') do
      post :create, employees_project: {  }
    end

    assert_redirected_to employees_project_path(assigns(:employees_project))
  end

  test "should show employees_project" do
    get :show, id: @employees_project
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employees_project
    assert_response :success
  end

  test "should update employees_project" do
    patch :update, id: @employees_project, employees_project: {  }
    assert_redirected_to employees_project_path(assigns(:employees_project))
  end

  test "should destroy employees_project" do
    assert_difference('EmployeesProject.count', -1) do
      delete :destroy, id: @employees_project
    end

    assert_redirected_to employees_projects_path
  end
end
