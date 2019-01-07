require 'test_helper'

class ViewersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @viewer = viewers(:one)
  end

  test 'should get index' do
    get viewers_url
    assert_response :success
  end

  test 'should get new' do
    get new_viewer_url
    assert_response :success
  end

  test 'should create viewer' do
    assert_difference('Viewer.count') do
      post viewers_url, params: { 
        viewer: { 
          birth: @viewer.birth,
          club: @viewer.club,
          last_name: @viewer.last_name,
          name: @viewer.name,
          telephone: @viewer.telephone 
        } 
      }
    end

    assert_redirected_to viewer_url(Viewer.last)
  end

  test 'should show viewer' do
    get viewer_url(@viewer)
    assert_response :success
  end

  test 'should get edit' do
    get edit_viewer_url(@viewer)
    assert_response :success
  end

  test 'should update viewer' do
    patch viewer_url(@viewer), params: {
      viewer: { 
        birth: @viewer.birth,
        club: @viewer.club,
        last_name: @viewer.last_name,
        name: @viewer.name,
        telephone: @viewer.telephone 
      } 
    }
    
    assert_redirected_to viewer_url(@viewer)
  end

  test 'should destroy viewer' do
    assert_difference('Viewer.count', -1) do
      delete viewer_url(@viewer)
    end

    assert_redirected_to viewers_url
  end
end
