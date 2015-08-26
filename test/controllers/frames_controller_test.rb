require 'test_helper'

class FramesControllerTest < ActionController::TestCase
  setup do
    @frame = frames(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:frames)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create frame" do
    assert_difference('Frame.count') do
      post :create, frame: { code_order: @frame.code_order, frame_columns: @frame.frame_columns, frame_name: @frame.frame_name, frame_rows: @frame.frame_rows, frame_seq: @frame.frame_seq, frame_type: @frame.frame_type, horizontal_direction: @frame.horizontal_direction, vertiacal_direction: @frame.vertiacal_direction }
    end

    assert_redirected_to frame_path(assigns(:frame))
  end

  test "should show frame" do
    get :show, id: @frame
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @frame
    assert_response :success
  end

  test "should update frame" do
    patch :update, id: @frame, frame: { code_order: @frame.code_order, frame_columns: @frame.frame_columns, frame_name: @frame.frame_name, frame_rows: @frame.frame_rows, frame_seq: @frame.frame_seq, frame_type: @frame.frame_type, horizontal_direction: @frame.horizontal_direction, vertiacal_direction: @frame.vertiacal_direction }
    assert_redirected_to frame_path(assigns(:frame))
  end

  test "should destroy frame" do
    assert_difference('Frame.count', -1) do
      delete :destroy, id: @frame
    end

    assert_redirected_to frames_path
  end
end
