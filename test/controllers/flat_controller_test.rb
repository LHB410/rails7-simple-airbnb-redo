require "test_helper"

class FlatControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get flat_new_url
    assert_response :success
  end

  test "should get create" do
    get flat_create_url
    assert_response :success
  end

  test "should get edit" do
    get flat_edit_url
    assert_response :success
  end

  test "should get update" do
    get flat_update_url
    assert_response :success
  end

  test "should get show" do
    get flat_show_url
    assert_response :success
  end

  test "should get index" do
    get flat_index_url
    assert_response :success
  end

  test "should get destroy" do
    get flat_destroy_url
    assert_response :success
  end
end
