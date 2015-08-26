require 'test_helper'

class PatientCasesControllerTest < ActionController::TestCase
  setup do
    @patient_case = patient_cases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:patient_cases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create patient_case" do
    assert_difference('PatientCase.count') do
      post :create, patient_case: { case_number: @patient_case.case_number, patient_info_id: @patient_case.patient_info_id }
    end

    assert_redirected_to patient_case_path(assigns(:patient_case))
  end

  test "should show patient_case" do
    get :show, id: @patient_case
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @patient_case
    assert_response :success
  end

  test "should update patient_case" do
    patch :update, id: @patient_case, patient_case: { case_number: @patient_case.case_number, patient_info_id: @patient_case.patient_info_id }
    assert_redirected_to patient_case_path(assigns(:patient_case))
  end

  test "should destroy patient_case" do
    assert_difference('PatientCase.count', -1) do
      delete :destroy, id: @patient_case
    end

    assert_redirected_to patient_cases_path
  end
end
