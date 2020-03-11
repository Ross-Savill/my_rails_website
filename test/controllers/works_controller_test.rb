require 'test_helper'

class WorksControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get works_new_url
    assert_response :success
  end

  test "should get create" do
    get works_create_url
    assert_response :success
  end

  test "should get edit" do
    get works_edit_url
    assert_response :success
  end

  test "should get update" do
    get works_update_url
    assert_response :success
  end

  test "should get delete" do
    get works_delete_url
    assert_response :success
  end

end
