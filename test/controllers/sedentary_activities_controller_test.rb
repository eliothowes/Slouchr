require 'test_helper'

class SedentaryActivitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sedentary_activities_index_url
    assert_response :success
  end

  test "should get new" do
    get sedentary_activities_new_url
    assert_response :success
  end

  test "should get show" do
    get sedentary_activities_show_url
    assert_response :success
  end

  test "should get edit" do
    get sedentary_activities_edit_url
    assert_response :success
  end

end
