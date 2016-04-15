require 'test_helper'

class TreatmentCentersControllerTest < ActionController::TestCase
  setup do
    @treatment_center = treatment_centers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:treatment_centers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create treatment_center" do
    assert_difference('TreatmentCenter.count') do
      post :create, treatment_center: { address: @treatment_center.address, dislikes: @treatment_center.dislikes, likes: @treatment_center.likes, name: @treatment_center.name, specialization_id: @treatment_center.specialization_id, syndicate_id: @treatment_center.syndicate_id }
    end

    assert_redirected_to treatment_center_path(assigns(:treatment_center))
  end

  test "should show treatment_center" do
    get :show, id: @treatment_center
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @treatment_center
    assert_response :success
  end

  test "should update treatment_center" do
    patch :update, id: @treatment_center, treatment_center: { address: @treatment_center.address, dislikes: @treatment_center.dislikes, likes: @treatment_center.likes, name: @treatment_center.name, specialization_id: @treatment_center.specialization_id, syndicate_id: @treatment_center.syndicate_id }
    assert_redirected_to treatment_center_path(assigns(:treatment_center))
  end

  test "should destroy treatment_center" do
    assert_difference('TreatmentCenter.count', -1) do
      delete :destroy, id: @treatment_center
    end

    assert_redirected_to treatment_centers_path
  end
end
