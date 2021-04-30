require 'test_helper'

class JobAppControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get job_app_index_url
    assert_response :success
  end

  test "should get show" do
    get job_app_show_url
    assert_response :success
  end

  test "should get new" do
    get job_app_new_url
    assert_response :success
  end

  test "should get create" do
    get job_app_create_url
    assert_response :success
  end

  test "should get update" do
    get job_app_update_url
    assert_response :success
  end

  test "should get destroy" do
    get job_app_destroy_url
    assert_response :success
  end

end
