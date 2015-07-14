require 'test_helper'

class V1::MapsControllerTest < ActionController::TestCase
  test "should list maps" do
    get :index

    assert_response :success
  end
end
