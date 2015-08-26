require 'test_helper'

class ContainerTypesControllerTest < ActionController::TestCase
  setup do
    @container_type = container_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:container_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create container_type" do
    assert_difference('ContainerType.count') do
      post :create, container_type: { add_link_url: @container_type.add_link_url, alia_name: @container_type.alia_name, container_catalog: @container_type.container_catalog, container_icon: @container_type.container_icon }
    end

    assert_redirected_to container_type_path(assigns(:container_type))
  end

  test "should show container_type" do
    get :show, id: @container_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @container_type
    assert_response :success
  end

  test "should update container_type" do
    patch :update, id: @container_type, container_type: { add_link_url: @container_type.add_link_url, alia_name: @container_type.alia_name, container_catalog: @container_type.container_catalog, container_icon: @container_type.container_icon }
    assert_redirected_to container_type_path(assigns(:container_type))
  end

  test "should destroy container_type" do
    assert_difference('ContainerType.count', -1) do
      delete :destroy, id: @container_type
    end

    assert_redirected_to container_types_path
  end
end
