require 'test_helper'

class InformationPersonalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @information_personal = information_personals(:one)
  end

  test 'should get index' do
    get information_personals_url
    assert_response :success
  end

  test 'should get new' do
    get new_information_personal_url
    assert_response :success
  end

  test 'should create information_personal' do
    assert_difference('InformationPersonal.count') do
      post information_personals_url, params: { information_personal: { birth_place: @information_personal.birth_place, born_date: @information_personal.born_date, club: @information_personal.club, gender: @information_personal.gender, height: @information_personal.height, name: @information_personal.name, weight: @information_personal.weight } }
    end

    assert_redirected_to information_personal_url(InformationPersonal.last)
  end

  test 'should show information_personal' do
    get information_personal_url(@information_personal)
    assert_response :success
  end

  test 'should get edit' do
    get edit_information_personal_url(@information_personal)
    assert_response :success
  end

  test 'should update information_personal' do
    patch information_personal_url(@information_personal), params: { information_personal: { birth_place: @information_personal.birth_place, born_date: @information_personal.born_date, club: @information_personal.club, gender: @information_personal.gender, height: @information_personal.height, name: @information_personal.name, weight: @information_personal.weight } }
    assert_redirected_to information_personal_url(@information_personal)
  end

  test 'should destroy information_personal' do
    assert_difference('InformationPersonal.count', -1) do
      delete information_personal_url(@information_personal)
    end

    assert_redirected_to information_personals_url
  end
end
