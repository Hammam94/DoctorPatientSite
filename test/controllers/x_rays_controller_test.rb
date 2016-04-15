require 'test_helper'

class XRaysControllerTest < ActionController::TestCase
  setup do
    @x_ray = x_rays(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:x_rays)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create x_ray" do
    assert_difference('XRay.count') do
      post :create, x_ray: { rays_name: @x_ray.rays_name }
    end

    assert_redirected_to x_ray_path(assigns(:x_ray))
  end

  test "should show x_ray" do
    get :show, id: @x_ray
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @x_ray
    assert_response :success
  end

  test "should update x_ray" do
    patch :update, id: @x_ray, x_ray: { rays_name: @x_ray.rays_name }
    assert_redirected_to x_ray_path(assigns(:x_ray))
  end

  test "should destroy x_ray" do
    assert_difference('XRay.count', -1) do
      delete :destroy, id: @x_ray
    end

    assert_redirected_to x_rays_path
  end
end
