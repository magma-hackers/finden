require 'application_system_test_case'

class VisoriaTest < ApplicationSystemTestCase
  setup do
    @visorium = visoria(:one)
  end

  test 'visiting the index' do
    visit visoria_url
    assert_selector 'h1', text: 'Visoria'
  end

  test 'creating a Visorium' do
    visit visoria_url
    click_on 'New Visorium'

    fill_in 'Category', with: @visorium.category
    fill_in 'Club', with: @visorium.club
    fill_in 'Date', with: @visorium.date
    fill_in 'Description', with: @visorium.description
    fill_in 'Place', with: @visorium.place
    fill_in 'Schedule', with: @visorium.schedule
    click_on 'Create Visorium'

    assert_text 'Visorium was successfully created'
    click_on 'Back'
  end

  test 'updating a Visorium' do
    visit visoria_url
    click_on 'Edit', match: :first

    fill_in 'Category', with: @visorium.category
    fill_in 'Club', with: @visorium.club
    fill_in 'Date', with: @visorium.date
    fill_in 'Description', with: @visorium.description
    fill_in 'Place', with: @visorium.place
    fill_in 'Schedule', with: @visorium.schedule
    click_on 'Update Visorium'

    assert_text 'Visorium was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Visorium' do
    visit visoria_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Visorium was successfully destroyed'
  end
end
