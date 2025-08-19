require "test_helper"

class WorkoutEntriesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get workout_entries_create_url
    assert_response :success
  end

  test "should get update" do
    get workout_entries_update_url
    assert_response :success
  end

  test "should get destroy" do
    get workout_entries_destroy_url
    assert_response :success
  end
end
