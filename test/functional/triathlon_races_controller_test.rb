require 'test_helper'

class TriathlonRacesControllerTest < ActionController::TestCase
  setup do
    @triathlon_race = triathlon_races(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:triathlon_races)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create triathlon_race" do
    assert_difference('TriathlonRace.count') do
      post :create, triathlon_race: { competition_id: @triathlon_race.competition_id, cycling_distance: @triathlon_race.cycling_distance, date: @triathlon_race.date, hour: @triathlon_race.hour, location_id: @triathlon_race.location_id, running_distance: @triathlon_race.running_distance, swimming_distance: @triathlon_race.swimming_distance, type: @triathlon_race.type }
    end

    assert_redirected_to triathlon_race_path(assigns(:triathlon_race))
  end

  test "should show triathlon_race" do
    get :show, id: @triathlon_race
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @triathlon_race
    assert_response :success
  end

  test "should update triathlon_race" do
    put :update, id: @triathlon_race, triathlon_race: { competition_id: @triathlon_race.competition_id, cycling_distance: @triathlon_race.cycling_distance, date: @triathlon_race.date, hour: @triathlon_race.hour, location_id: @triathlon_race.location_id, running_distance: @triathlon_race.running_distance, swimming_distance: @triathlon_race.swimming_distance, type: @triathlon_race.type }
    assert_redirected_to triathlon_race_path(assigns(:triathlon_race))
  end

  test "should destroy triathlon_race" do
    assert_difference('TriathlonRace.count', -1) do
      delete :destroy, id: @triathlon_race
    end

    assert_redirected_to triathlon_races_path
  end
end
