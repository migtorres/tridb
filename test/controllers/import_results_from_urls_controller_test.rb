require 'test_helper'

class ImportResultsFromUrlsControllerTest < ActionController::TestCase
  setup do
    @import_results_from_url = import_results_from_urls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:import_results_from_urls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create import_results_from_url" do
    assert_difference('ImportResultsFromUrl.count') do
      post :create, import_results_from_url: { quantity: @import_results_from_url.quantity, type: @import_results_from_url.type, url: @import_results_from_url.url }
    end

    assert_redirected_to import_results_from_url_path(assigns(:import_results_from_url))
  end

  test "should show import_results_from_url" do
    get :show, id: @import_results_from_url
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @import_results_from_url
    assert_response :success
  end

  test "should update import_results_from_url" do
    patch :update, id: @import_results_from_url, import_results_from_url: { quantity: @import_results_from_url.quantity, type: @import_results_from_url.type, url: @import_results_from_url.url }
    assert_redirected_to import_results_from_url_path(assigns(:import_results_from_url))
  end

  test "should destroy import_results_from_url" do
    assert_difference('ImportResultsFromUrl.count', -1) do
      delete :destroy, id: @import_results_from_url
    end

    assert_redirected_to import_results_from_urls_path
  end
end
