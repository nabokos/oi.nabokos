require 'test_helper'

class API::V1::MapsControllerTest < ActionController::TestCase
  class Index < self
    test "should list maps" do
      get :index

      assert_response :success
    end
  end

  class Show < self
    test "should show one map" do
      get :show, id: maps(:one).id

      assert_response :success
    end

    test "should show 404 map not found" do
      get :show, id: -1

      assert_response :not_found
    end

    test "should render as sokoban" do
      get :show, id: maps(:one).id, format: 'sokoban'

      assert_response :success
    end
  end
end
