require 'test_helper'

class MedicineCategroysControllerTest < ActionController::TestCase
  setup do
    @medicine_categroy = medicine_categroys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:medicine_categroys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create medicine_categroy" do
    assert_difference('MedicineCategroy.count') do
      post :create, medicine_categroy: { name: @medicine_categroy.name }
    end

    assert_redirected_to medicine_categroy_path(assigns(:medicine_categroy))
  end

  test "should show medicine_categroy" do
    get :show, id: @medicine_categroy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @medicine_categroy
    assert_response :success
  end

  test "should update medicine_categroy" do
    patch :update, id: @medicine_categroy, medicine_categroy: { name: @medicine_categroy.name }
    assert_redirected_to medicine_categroy_path(assigns(:medicine_categroy))
  end

  test "should destroy medicine_categroy" do
    assert_difference('MedicineCategroy.count', -1) do
      delete :destroy, id: @medicine_categroy
    end

    assert_redirected_to medicine_categroys_path
  end
end
