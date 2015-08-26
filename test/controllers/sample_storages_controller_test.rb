require 'test_helper'

class SampleStoragesControllerTest < ActionController::TestCase
  setup do
    @sample_storage = sample_storages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sample_storages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sample_storage" do
    assert_difference('SampleStorage.count') do
      post :create, sample_storage: { boxer_id: @sample_storage.boxer_id, position_index: @sample_storage.position_index, sample_id: @sample_storage.sample_id }
    end

    assert_redirected_to sample_storage_path(assigns(:sample_storage))
  end

  test "should show sample_storage" do
    get :show, id: @sample_storage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sample_storage
    assert_response :success
  end

  test "should update sample_storage" do
    patch :update, id: @sample_storage, sample_storage: { boxer_id: @sample_storage.boxer_id, position_index: @sample_storage.position_index, sample_id: @sample_storage.sample_id }
    assert_redirected_to sample_storage_path(assigns(:sample_storage))
  end

  test "should destroy sample_storage" do
    assert_difference('SampleStorage.count', -1) do
      delete :destroy, id: @sample_storage
    end

    assert_redirected_to sample_storages_path
  end
end
