require 'test_helper'

class SampleStorageLogsControllerTest < ActionController::TestCase
  setup do
    @sample_storage_log = sample_storage_logs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sample_storage_logs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sample_storage_log" do
    assert_difference('SampleStorageLog.count') do
      post :create, sample_storage_log: { left_volume: @sample_storage_log.left_volume, out_percent: @sample_storage_log.out_percent, out_use_for: @sample_storage_log.out_use_for, sample_id: @sample_storage_log.sample_id, user_name: @sample_storage_log.user_name }
    end

    assert_redirected_to sample_storage_log_path(assigns(:sample_storage_log))
  end

  test "should show sample_storage_log" do
    get :show, id: @sample_storage_log
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sample_storage_log
    assert_response :success
  end

  test "should update sample_storage_log" do
    patch :update, id: @sample_storage_log, sample_storage_log: { left_volume: @sample_storage_log.left_volume, out_percent: @sample_storage_log.out_percent, out_use_for: @sample_storage_log.out_use_for, sample_id: @sample_storage_log.sample_id, user_name: @sample_storage_log.user_name }
    assert_redirected_to sample_storage_log_path(assigns(:sample_storage_log))
  end

  test "should destroy sample_storage_log" do
    assert_difference('SampleStorageLog.count', -1) do
      delete :destroy, id: @sample_storage_log
    end

    assert_redirected_to sample_storage_logs_path
  end
end
