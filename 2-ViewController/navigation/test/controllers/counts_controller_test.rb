require "test_helper"

class CountsControllerTest < ActionDispatch::IntegrationTest
  test "should get reset" do
    get counts_reset_url
    assert_response :success
  end
end
