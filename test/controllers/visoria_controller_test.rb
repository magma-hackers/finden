require 'test_helper'

class VisoriaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @visorium = visoria(:one)
  end

  test "should get index" do
    get visoria_url
    assert_response :success
  end

  test "should get new" do
    get new_visorium_url
    assert_response :success
  end

  test "should create visorium" do
    assert_difference('Visorium.count') do
      post visoria_url, params: {
        visorium: { 
          category: @visorium.category,
          club: @visorium.club, 
          date: @visorium.date, 
          description: @visorium.description, 
          place: @visorium.place, 
          schedule: @visorium.schedule 
        } 
      }
    end

    assert_redirected_to visorium_url(Visorium.last)
  end

  test "should show visorium" do
    get visorium_url(@visorium)
    assert_response :success
  end

  test "should get edit" do
    get edit_visorium_url(@visorium)
    assert_response :success
  end

  test "should update visorium" do
    patch visorium_url(@visorium), params: { 
      visorium: { 
        category: @visorium.category, 
        club: @visorium.club, 
        date: @visorium.date, 
        description: @visorium.description,
        place: @visorium.place, 
        schedule: @visorium.schedule
      } 
    }
    
    assert_redirected_to visorium_url(@visorium)
  end

  test "should destroy visorium" do
    assert_difference('Visorium.count', -1) do
      delete visorium_url(@visorium)
    end

    assert_redirected_to visoria_url
  end
end
