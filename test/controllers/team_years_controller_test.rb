require 'test_helper'

class TeamYearsControllerTest < ActionController::TestCase
  setup do
    @team_year = team_years(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:team_years)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create team_year" do
    assert_difference('TeamYear.count') do
      post :create, team_year: { athlete_id: @team_year.athlete_id, team_id: @team_year.team_id, year: @team_year.year }
    end

    assert_redirected_to team_year_path(assigns(:team_year))
  end

  test "should show team_year" do
    get :show, id: @team_year
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @team_year
    assert_response :success
  end

  test "should update team_year" do
    patch :update, id: @team_year, team_year: { athlete_id: @team_year.athlete_id, team_id: @team_year.team_id, year: @team_year.year }
    assert_redirected_to team_year_path(assigns(:team_year))
  end

  test "should destroy team_year" do
    assert_difference('TeamYear.count', -1) do
      delete :destroy, id: @team_year
    end

    assert_redirected_to team_years_path
  end
end
