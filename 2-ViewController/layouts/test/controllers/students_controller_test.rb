require "test_helper"

class StudentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get students_index_url
    assert_response :success
  end

  test "should get new" do
    get students_new_url
    assert_response :success
  end

  test "should get profile" do
    get students_profile_url
    assert_response :success
  end

  test "should get info" do
    get students_info_url
    assert_response :success
  end

  test "should get hello_world" do
    get students_hello_world_url
    assert_response :success
  end
end
