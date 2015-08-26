require 'test_helper'

class PatientInfosControllerTest < ActionController::TestCase
  setup do
    @patient_info = patient_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:patient_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create patient_info" do
    assert_difference('PatientInfo.count') do
      post :create, patient_info: { address: @patient_info.address, birthday: @patient_info.birthday, cell_phone: @patient_info.cell_phone, company_address: @patient_info.company_address, company_name: @patient_info.company_name, company_phone: @patient_info.company_phone, company_zip: @patient_info.company_zip, gender: @patient_info.gender, home_phone: @patient_info.home_phone, other_phone: @patient_info.other_phone, patient_id: @patient_info.patient_id, patient_name: @patient_info.patient_name, relationship_first: @patient_info.relationship_first, relationship_second: @patient_info.relationship_second, relationship_third: @patient_info.relationship_third, relative_name_first: @patient_info.relative_name_first, relative_name_second: @patient_info.relative_name_second, relative_name_third: @patient_info.relative_name_third, relative_phone1_first: @patient_info.relative_phone1_first, relative_phone1_second: @patient_info.relative_phone1_second, relative_phone1_third: @patient_info.relative_phone1_third, relative_phone2_first: @patient_info.relative_phone2_first, relative_phone2_second: @patient_info.relative_phone2_second, relative_phone2_third: @patient_info.relative_phone2_third, zip_code: @patient_info.zip_code }
    end

    assert_redirected_to patient_info_path(assigns(:patient_info))
  end

  test "should show patient_info" do
    get :show, id: @patient_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @patient_info
    assert_response :success
  end

  test "should update patient_info" do
    patch :update, id: @patient_info, patient_info: { address: @patient_info.address, birthday: @patient_info.birthday, cell_phone: @patient_info.cell_phone, company_address: @patient_info.company_address, company_name: @patient_info.company_name, company_phone: @patient_info.company_phone, company_zip: @patient_info.company_zip, gender: @patient_info.gender, home_phone: @patient_info.home_phone, other_phone: @patient_info.other_phone, patient_id: @patient_info.patient_id, patient_name: @patient_info.patient_name, relationship_first: @patient_info.relationship_first, relationship_second: @patient_info.relationship_second, relationship_third: @patient_info.relationship_third, relative_name_first: @patient_info.relative_name_first, relative_name_second: @patient_info.relative_name_second, relative_name_third: @patient_info.relative_name_third, relative_phone1_first: @patient_info.relative_phone1_first, relative_phone1_second: @patient_info.relative_phone1_second, relative_phone1_third: @patient_info.relative_phone1_third, relative_phone2_first: @patient_info.relative_phone2_first, relative_phone2_second: @patient_info.relative_phone2_second, relative_phone2_third: @patient_info.relative_phone2_third, zip_code: @patient_info.zip_code }
    assert_redirected_to patient_info_path(assigns(:patient_info))
  end

  test "should destroy patient_info" do
    assert_difference('PatientInfo.count', -1) do
      delete :destroy, id: @patient_info
    end

    assert_redirected_to patient_infos_path
  end
end
