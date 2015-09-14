require 'test_helper'

class SysRolesControllerTest < ActionController::TestCase
  setup do
    @sys_role = sys_roles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sys_roles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sys_role" do
    assert_difference('SysRole.count') do
      post :create, sys_role: { name: @sys_role.name, remark: @sys_role.remark }
    end

    assert_redirected_to sys_role_path(assigns(:sys_role))
  end

  test "should show sys_role" do
    get :show, id: @sys_role
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sys_role
    assert_response :success
  end

  test "should update sys_role" do
    patch :update, id: @sys_role, sys_role: { name: @sys_role.name, remark: @sys_role.remark }
    assert_redirected_to sys_role_path(assigns(:sys_role))
  end

  test "should destroy sys_role" do
    assert_difference('SysRole.count', -1) do
      delete :destroy, id: @sys_role
    end

    assert_redirected_to sys_roles_path
  end
end
