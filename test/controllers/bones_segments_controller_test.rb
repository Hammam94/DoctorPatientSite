require 'test_helper'

class BonesSegmentsControllerTest < ActionController::TestCase
  setup do
    @bones_segment = bones_segments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bones_segments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bones_segment" do
    assert_difference('BonesSegment.count') do
      post :create, bones_segment: { company_id: @bones_segment.company_id, description: @bones_segment.description, name: @bones_segment.name }
    end

    assert_redirected_to bones_segment_path(assigns(:bones_segment))
  end

  test "should show bones_segment" do
    get :show, id: @bones_segment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bones_segment
    assert_response :success
  end

  test "should update bones_segment" do
    patch :update, id: @bones_segment, bones_segment: { company_id: @bones_segment.company_id, description: @bones_segment.description, name: @bones_segment.name }
    assert_redirected_to bones_segment_path(assigns(:bones_segment))
  end

  test "should destroy bones_segment" do
    assert_difference('BonesSegment.count', -1) do
      delete :destroy, id: @bones_segment
    end

    assert_redirected_to bones_segments_path
  end
end
