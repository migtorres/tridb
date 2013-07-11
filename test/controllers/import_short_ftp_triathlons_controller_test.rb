require 'test_helper'

class ImportShortFtpTriathlonsControllerTest < ActionController::TestCase
  setup do
    @import_short_ftp_triathlon = import_short_ftp_triathlons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:import_short_ftp_triathlons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create import_short_ftp_triathlon" do
    assert_difference('ImportShortFtpTriathlon.count') do
      post :create, import_short_ftp_triathlon: { age_group_name: @import_short_ftp_triathlon.age_group_name, athlete_name: @import_short_ftp_triathlon.athlete_name, cycling_position: @import_short_ftp_triathlon.cycling_position, cycling_time: @import_short_ftp_triathlon.cycling_time, ftp_license: @import_short_ftp_triathlon.ftp_license, ftp_number: @import_short_ftp_triathlon.ftp_number, pen: @import_short_ftp_triathlon.pen, place: @import_short_ftp_triathlon.place, race_time: @import_short_ftp_triathlon.race_time, running_position: @import_short_ftp_triathlon.running_position, running_time: @import_short_ftp_triathlon.running_time, swimming_position: @import_short_ftp_triathlon.swimming_position, swimming_time: @import_short_ftp_triathlon.swimming_time, team: @import_short_ftp_triathlon.team }
    end

    assert_redirected_to import_short_ftp_triathlon_path(assigns(:import_short_ftp_triathlon))
  end

  test "should show import_short_ftp_triathlon" do
    get :show, id: @import_short_ftp_triathlon
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @import_short_ftp_triathlon
    assert_response :success
  end

  test "should update import_short_ftp_triathlon" do
    patch :update, id: @import_short_ftp_triathlon, import_short_ftp_triathlon: { age_group_name: @import_short_ftp_triathlon.age_group_name, athlete_name: @import_short_ftp_triathlon.athlete_name, cycling_position: @import_short_ftp_triathlon.cycling_position, cycling_time: @import_short_ftp_triathlon.cycling_time, ftp_license: @import_short_ftp_triathlon.ftp_license, ftp_number: @import_short_ftp_triathlon.ftp_number, pen: @import_short_ftp_triathlon.pen, place: @import_short_ftp_triathlon.place, race_time: @import_short_ftp_triathlon.race_time, running_position: @import_short_ftp_triathlon.running_position, running_time: @import_short_ftp_triathlon.running_time, swimming_position: @import_short_ftp_triathlon.swimming_position, swimming_time: @import_short_ftp_triathlon.swimming_time, team: @import_short_ftp_triathlon.team }
    assert_redirected_to import_short_ftp_triathlon_path(assigns(:import_short_ftp_triathlon))
  end

  test "should destroy import_short_ftp_triathlon" do
    assert_difference('ImportShortFtpTriathlon.count', -1) do
      delete :destroy, id: @import_short_ftp_triathlon
    end

    assert_redirected_to import_short_ftp_triathlons_path
  end
end
