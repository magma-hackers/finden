require 'application_system_test_case'

class InformationPersonalsTest < ApplicationSystemTestCase
  setup do
    @information_personal = information_personals(:one)
  end

  test 'visiting the index' do
    visit information_personals_url
    assert_selector 'h1', text: 'Information Personals'
  end

  test 'creating a Information personal' do
    visit information_personals_url
    click_on 'New Information Personal'

    fill_in 'Birth Place', with: @information_personal.birth_place
    fill_in 'Born Date', with: @information_personal.born_date
    fill_in 'Club', with: @information_personal.club
    fill_in 'Gender', with: @information_personal.gender
    fill_in 'Height', with: @information_personal.height
    fill_in 'Name', with: @information_personal.name
    fill_in 'Weight', with: @information_personal.weight
    click_on 'Create Information personal'

    assert_text 'Information personal was successfully created'
    click_on 'Back'
  end

  test 'updating a Information personal' do
    visit information_personals_url
    click_on 'Edit', match: :first

    fill_in 'Birth Place', with: @information_personal.birth_place
    fill_in 'Born Date', with: @information_personal.born_date
    fill_in 'Club', with: @information_personal.club
    fill_in 'Gender', with: @information_personal.gender
    fill_in 'Height', with: @information_personal.height
    fill_in 'Name', with: @information_personal.name
    fill_in 'Weight', with: @information_personal.weight
    click_on 'Update Information personal'

    assert_text 'Information personal was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Information personal' do
    visit information_personals_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Information personal was successfully destroyed'
  end
end
