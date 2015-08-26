require 'test_helper'

class BoxerStoragesControllerTest < ActionController::TestCase
  setup do
    @boxer_storage = boxer_storages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:boxer_storages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create boxer_storage" do
    assert_difference('BoxerStorage.count') do
      post :create, boxer_storage: { boxer_id: @boxer_storage.boxer_id, frame_id: @boxer_storage.frame_id, position_index: @boxer_storage.position_index }
    end

    assert_redirected_to boxer_storage_path(assigns(:boxer_storage))
  end

  test "should show boxer_storage" do
    get :show, id: @boxer_storage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @boxer_storage
    assert_response :success
  end

  test "should update boxer_storage" do
    patch :update, id: @boxer_storage, boxer_storage: { boxer_id: @boxer_storage.boxer_id, frame_id: @boxer_storage.frame_id, position_index: @boxer_storage.position_index }
    assert_redirected_to boxer_storage_path(assigns(:boxer_storage))
  end

  test "should destroy boxer_storage" do
    assert_difference('BoxerStorage.count', -1) do
      delete :destroy, id: @boxer_storage
    end

    assert_redirected_to boxer_storages_path
  end
end
