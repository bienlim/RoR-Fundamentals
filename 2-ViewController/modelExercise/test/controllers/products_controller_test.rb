require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get products_new_url
    assert_response :success
  end

  test "should get id" do
    get products_id_url
    assert_response :success
  end

  test "should get edit" do
    get products_edit_url
    assert_response :success
  end

  test "should get count" do
    get products_count_url
    assert_response :success
  end
end
