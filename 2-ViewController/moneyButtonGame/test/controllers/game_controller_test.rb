require "test_helper"

class GameControllerTest < ActionDispatch::IntegrationTest
  test "should get low" do
    get game_low_url
    assert_response :success
  end

  test "should get moderate" do
    get game_moderate_url
    assert_response :success
  end

  test "should get high" do
    get game_high_url
    assert_response :success
  end

  test "should get severe" do
    get game_severe_url
    assert_response :success
  end
end
