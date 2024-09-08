require "test_helper"

class MainsControllerTest < ActionDispatch::IntegrationTest
  test "should get hello" do
    get mains_hello_url
    assert_response :success
  end

  test "should get say" do
    get mains_say_url
    assert_response :success
  end

  test "should get say_anything" do
    get mains_say_anything_url
    assert_response :success
  end

  test "should get danger" do
    get mains_danger_url
    assert_response :success
  end
end
