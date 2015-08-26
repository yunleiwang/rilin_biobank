require 'test_helper'

class FrameStoragesControllerTest < ActionController::TestCase
  setup do
    @frame_storage = frame_storages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:frame_storages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create frame_storage" do
    assert_difference('FrameStorage.count') do
      post :create, frame_storage: { container_id: @frame_storage.container_id, frame_id: @frame_storage.frame_id, position_index: @frame_storage.position_index }
    end

    assert_redirected_to frame_storage_path(assigns(:frame_storage))
  end

  test "should show frame_storage" do
    get :show, id: @frame_storage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @frame_storage
    assert_response :success
  end

  test "should update frame_storage" do
    patch :update, id: @frame_storage, frame_storage: { container_id: @frame_storage.container_id, frame_id: @frame_storage.frame_id, position_index: @frame_storage.position_index }
    assert_redirected_to frame_storage_path(assigns(:frame_storage))
  end

  test "should destroy frame_storage" do
    assert_difference('FrameStorage.count', -1) do
      delete :destroy, id: @frame_storage
    end

    assert_redirected_to frame_storages_path
  end
end
