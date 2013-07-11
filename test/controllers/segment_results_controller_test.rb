require 'test_helper'

class SegmentResultsControllerTest < ActionController::TestCase
  setup do
    @segment_result = segment_results(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:segment_results)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create segment_result" do
    assert_difference('SegmentResult.count') do
      post :create, segment_result: { age_group_id: @segment_result.age_group_id, athlete_id: @segment_result.athlete_id, class_id: @segment_result.class_id, place: @segment_result.place, segment_id: @segment_result.segment_id, time: @segment_result.time }
    end

    assert_redirected_to segment_result_path(assigns(:segment_result))
  end

  test "should show segment_result" do
    get :show, id: @segment_result
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @segment_result
    assert_response :success
  end

  test "should update segment_result" do
    patch :update, id: @segment_result, segment_result: { age_group_id: @segment_result.age_group_id, athlete_id: @segment_result.athlete_id, class_id: @segment_result.class_id, place: @segment_result.place, segment_id: @segment_result.segment_id, time: @segment_result.time }
    assert_redirected_to segment_result_path(assigns(:segment_result))
  end

  test "should destroy segment_result" do
    assert_difference('SegmentResult.count', -1) do
      delete :destroy, id: @segment_result
    end

    assert_redirected_to segment_results_path
  end
end
