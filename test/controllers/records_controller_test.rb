require 'test_helper'

class RecordsControllerTest < ActionController::TestCase
  setup do
    @record = records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create record" do
    assert_difference('Record.count') do
      post :create, record: { Rdate: @record.Rdate, diagnoses: @record.diagnoses, diagnoses_type: @record.diagnoses_type, patient_id: @record.patient_id, treatment_center_id: @record.treatment_center_id }
    end

    assert_redirected_to record_path(assigns(:record))
  end

  test "should show record" do
    get :show, id: @record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @record
    assert_response :success
  end

  test "should update record" do
    patch :update, id: @record, record: { Rdate: @record.Rdate, diagnoses: @record.diagnoses, diagnoses_type: @record.diagnoses_type, patient_id: @record.patient_id, treatment_center_id: @record.treatment_center_id }
    assert_redirected_to record_path(assigns(:record))
  end

  test "should destroy record" do
    assert_difference('Record.count', -1) do
      delete :destroy, id: @record
    end

    assert_redirected_to records_path
  end
end
