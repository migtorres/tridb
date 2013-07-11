require 'test_helper'

class ResultsControllerTest < ActionController::TestCase
  setup do
    @result = results(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:results)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create result" do
    assert_difference('Result.count') do
      post :create, result: { age_group_id: @result.age_group_id, athlete_id: @result.athlete_id, class_id: @result.class_id, classification_id: @result.classification_id, place: @result.place, race_id: @result.race_id, time: @result.time }
    end

    assert_redirected_to result_path(assigns(:result))
  end

  test "should show result" do
    get :show, id: @result
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @result
    assert_response :success
  end

  test "should update result" do
    patch :update, id: @result, result: { age_group_id: @result.age_group_id, athlete_id: @result.athlete_id, class_id: @result.class_id, classification_id: @result.classification_id, place: @result.place, race_id: @result.race_id, time: @result.time }
    assert_redirected_to result_path(assigns(:result))
  end

  test "should destroy result" do
    assert_difference('Result.count', -1) do
      delete :destroy, id: @result
    end

    assert_redirected_to results_path
  end
end
