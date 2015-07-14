require 'test_helper'

class V1::MapsControllerTest < ActionController::TestCase
  test "should list maps" do
    get :index

    assert_response :success
  end

  test "should show one map" do
    get :show, id: maps(:one).id

    assert_response :success
  end

  test "should show 404 map not found" do
    get :show, id: -1

    assert_response :not_found
  end
end
