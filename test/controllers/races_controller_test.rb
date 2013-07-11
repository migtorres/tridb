require 'test_helper'

class RacesControllerTest < ActionController::TestCase
  setup do
    @race = races(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:races)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create race" do
    assert_difference('Race.count') do
      post :create, race: { competition_id: @race.competition_id, date: @race.date, global_race_id: @race.global_race_id, location_id: @race.location_id, name: @race.name, sport_id: @race.sport_id, type_id: @race.type_id }
    end

    assert_redirected_to race_path(assigns(:race))
  end

  test "should show race" do
    get :show, id: @race
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @race
    assert_response :success
  end

  test "should update race" do
    patch :update, id: @race, race: { competition_id: @race.competition_id, date: @race.date, global_race_id: @race.global_race_id, location_id: @race.location_id, name: @race.name, sport_id: @race.sport_id, type_id: @race.type_id }
    assert_redirected_to race_path(assigns(:race))
  end

  test "should destroy race" do
    assert_difference('Race.count', -1) do
      delete :destroy, id: @race
    end

    assert_redirected_to races_path
  end
end
