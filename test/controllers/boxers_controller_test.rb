require 'test_helper'

class BoxersControllerTest < ActionController::TestCase
  setup do
    @boxer = boxers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:boxers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create boxer" do
    assert_difference('Boxer.count') do
      post :create, boxer: { box_column: @boxer.box_column, box_name: @boxer.box_name, box_row: @boxer.box_row, box_seq: @boxer.box_seq, remark: @boxer.remark }
    end

    assert_redirected_to boxer_path(assigns(:boxer))
  end

  test "should show boxer" do
    get :show, id: @boxer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @boxer
    assert_response :success
  end

  test "should update boxer" do
    patch :update, id: @boxer, boxer: { box_column: @boxer.box_column, box_name: @boxer.box_name, box_row: @boxer.box_row, box_seq: @boxer.box_seq, remark: @boxer.remark }
    assert_redirected_to boxer_path(assigns(:boxer))
  end

  test "should destroy boxer" do
    assert_difference('Boxer.count', -1) do
      delete :destroy, id: @boxer
    end

    assert_redirected_to boxers_path
  end
end
