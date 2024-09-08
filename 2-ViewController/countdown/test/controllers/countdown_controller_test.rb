require "test_helper"

class CountdownControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get countdown_main_url
    assert_response :success
  end
end
