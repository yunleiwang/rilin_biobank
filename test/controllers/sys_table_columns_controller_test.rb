require 'test_helper'

class SysTableColumnsControllerTest < ActionController::TestCase
  setup do
    @sys_table_column = sys_table_columns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sys_table_columns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sys_table_column" do
    assert_difference('SysTableColumn.count') do
      post :create, sys_table_column: { c_name_en: @sys_table_column.c_name_en, cname_zn: @sys_table_column.cname_zn, order_no: @sys_table_column.order_no, tname_en: @sys_table_column.tname_en, tname_zn: @sys_table_column.tname_zn }
    end

    assert_redirected_to sys_table_column_path(assigns(:sys_table_column))
  end

  test "should show sys_table_column" do
    get :show, id: @sys_table_column
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sys_table_column
    assert_response :success
  end

  test "should update sys_table_column" do
    patch :update, id: @sys_table_column, sys_table_column: { c_name_en: @sys_table_column.c_name_en, cname_zn: @sys_table_column.cname_zn, order_no: @sys_table_column.order_no, tname_en: @sys_table_column.tname_en, tname_zn: @sys_table_column.tname_zn }
    assert_redirected_to sys_table_column_path(assigns(:sys_table_column))
  end

  test "should destroy sys_table_column" do
    assert_difference('SysTableColumn.count', -1) do
      delete :destroy, id: @sys_table_column
    end

    assert_redirected_to sys_table_columns_path
  end
end
