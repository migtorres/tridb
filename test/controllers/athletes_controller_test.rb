require 'test_helper'

class AthletesControllerTest < ActionController::TestCase
  setup do
    @athlete = athletes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:athletes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create athlete" do
    assert_difference('Athlete.count') do
      post :create, athlete: { birth_date: @athlete.birth_date, email: @athlete.email, facebook: @athlete.facebook, ftp_license: @athlete.ftp_license, ftp_number: @athlete.ftp_number, full_name: @athlete.full_name, gender: @athlete.gender, location_id: @athlete.location_id, name: @athlete.name, nationality: @athlete.nationality, team_id: @athlete.team_id, twitter: @athlete.twitter, url: @athlete.url }
    end

    assert_redirected_to athlete_path(assigns(:athlete))
  end

  test "should show athlete" do
    get :show, id: @athlete
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @athlete
    assert_response :success
  end

  test "should update athlete" do
    patch :update, id: @athlete, athlete: { birth_date: @athlete.birth_date, email: @athlete.email, facebook: @athlete.facebook, ftp_license: @athlete.ftp_license, ftp_number: @athlete.ftp_number, full_name: @athlete.full_name, gender: @athlete.gender, location_id: @athlete.location_id, name: @athlete.name, nationality: @athlete.nationality, team_id: @athlete.team_id, twitter: @athlete.twitter, url: @athlete.url }
    assert_redirected_to athlete_path(assigns(:athlete))
  end

  test "should destroy athlete" do
    assert_difference('Athlete.count', -1) do
      delete :destroy, id: @athlete
    end

    assert_redirected_to athletes_path
  end
end
