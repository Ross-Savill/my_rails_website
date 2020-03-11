require 'test_helper'

class HomepageItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get homepage_items_index_url
    assert_response :success
  end

  test "should get new" do
    get homepage_items_new_url
    assert_response :success
  end

  test "should get edit" do
    get homepage_items_edit_url
    assert_response :success
  end

  test "should get create" do
    get homepage_items_create_url
    assert_response :success
  end

  test "should get delete" do
    get homepage_items_delete_url
    assert_response :success
  end

  test "should get update" do
    get homepage_items_update_url
    assert_response :success
  end

end
