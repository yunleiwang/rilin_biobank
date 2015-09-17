require 'test_helper'

class MenuLibsControllerTest < ActionController::TestCase
  setup do
    @menu_lib = menu_libs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:menu_libs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create menu_lib" do
    assert_difference('MenuLib.count') do
      post :create, menu_lib: { link: @menu_lib.link, menu_lib_id: @menu_lib.menu_lib_id, name_zh: @menu_lib.name_zh, seq: @menu_lib.seq }
    end

    assert_redirected_to menu_lib_path(assigns(:menu_lib))
  end

  test "should show menu_lib" do
    get :show, id: @menu_lib
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @menu_lib
    assert_response :success
  end

  test "should update menu_lib" do
    patch :update, id: @menu_lib, menu_lib: { link: @menu_lib.link, menu_lib_id: @menu_lib.menu_lib_id, name_zh: @menu_lib.name_zh, seq: @menu_lib.seq }
    assert_redirected_to menu_lib_path(assigns(:menu_lib))
  end

  test "should destroy menu_lib" do
    assert_difference('MenuLib.count', -1) do
      delete :destroy, id: @menu_lib
    end

    assert_redirected_to menu_libs_path
  end
end
