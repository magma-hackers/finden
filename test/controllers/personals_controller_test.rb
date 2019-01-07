require 'test_helper'

class PersonalsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get personals_index_url
    assert_response :success
  end

  test "should get new" do
    get personals_new_url
    assert_response :success
  end

  test "should get edit" do
    get personals_edit_url
    assert_response :success
  end

end
