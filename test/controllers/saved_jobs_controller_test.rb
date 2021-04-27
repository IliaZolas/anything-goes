require 'test_helper'

class SavedJobsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get saved_jobs_index_url
    assert_response :success
  end

  test "should get new" do
    get saved_jobs_new_url
    assert_response :success
  end

  test "should get create" do
    get saved_jobs_create_url
    assert_response :success
  end

  test "should get destroy" do
    get saved_jobs_destroy_url
    assert_response :success
  end

end
