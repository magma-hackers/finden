require 'test_helper'

class ContractualsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contractual = contractuals(:one)
  end

  test 'should get index' do
    get contractuals_url
    assert_response :success
  end

  test 'should get new' do
    get new_contractual_url
    assert_response :success
  end

  test 'should create contractual' do
    assert_difference('Contractual.count') do
      post contractuals_url, params: { 
        contractual: { 
          agent: @contractual.agent,
          nui: @contractual.nui,
          player_type: @contractual.player_type 
        } 
      }
    end

    assert_redirected_to contractual_url(Contractual.last)
  end

  test 'should show contractual' do
    get contractual_url(@contractual)
    assert_response :success
  end

  test 'should get edit' do
    get edit_contractual_url(@contractual)
    assert_response :success
  end

  test 'should update contractual' do
    patch contractual_url(@contractual), params: {
      contractual: { 
        agent: @contractual.agent,
        nui: @contractual.nui,
        player_type: @contractual.player_type 
      } 
    }
    
    assert_redirected_to contractual_url(@contractual)
  end

  test 'should destroy contractual' do
    assert_difference('Contractual.count', -1) do
      delete contractual_url(@contractual)
    end

    assert_redirected_to contractuals_url
  end
end
