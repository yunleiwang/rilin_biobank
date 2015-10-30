require 'test_helper'

class SampleOutLogsControllerTest < ActionController::TestCase
  setup do
    @sample_out_log = sample_out_logs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sample_out_logs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sample_out_log" do
    assert_difference('SampleOutLog.count') do
      post :create, sample_out_log: { out_status: @sample_out_log.out_status, remark: @sample_out_log.remark, sample_id: @sample_out_log.sample_id, sample_preout_log_id: @sample_out_log.sample_preout_log_id }
    end

    assert_redirected_to sample_out_log_path(assigns(:sample_out_log))
  end

  test "should show sample_out_log" do
    get :show, id: @sample_out_log
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sample_out_log
    assert_response :success
  end

  test "should update sample_out_log" do
    patch :update, id: @sample_out_log, sample_out_log: { out_status: @sample_out_log.out_status, remark: @sample_out_log.remark, sample_id: @sample_out_log.sample_id, sample_preout_log_id: @sample_out_log.sample_preout_log_id }
    assert_redirected_to sample_out_log_path(assigns(:sample_out_log))
  end

  test "should destroy sample_out_log" do
    assert_difference('SampleOutLog.count', -1) do
      delete :destroy, id: @sample_out_log
    end

    assert_redirected_to sample_out_logs_path
  end
end
