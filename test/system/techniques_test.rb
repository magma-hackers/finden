require 'application_system_test_case'

class TechniquesTest < ApplicationSystemTestCase
  setup do
    @technique = techniques(:one)
  end

  test 'visiting the index' do
    visit techniques_url
    assert_selector 'h1', text: 'Techniques'
  end

  test 'creating a Technique' do
    visit techniques_url
    click_on 'New Technique'

    fill_in 'Princial Position', with: @technique.principal_position
    fill_in 'Secondary Position', with: @technique.secondary_position
    fill_in 'Strong Foot', with: @technique.strong_foot
    click_on 'Create Technique'

    assert_text 'Technique was successfully created'
    click_on 'Back'
  end

  test 'updating a Technique' do
    visit techniques_url
    click_on 'Edit', match: :first

    fill_in 'Princial Position', with: @technique.principal_position
    fill_in 'Secondary Position', with: @technique.secondary_position
    fill_in 'Strong Foot', with: @technique.strong_foot
    click_on 'Update Technique'

    assert_text 'Technique was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Technique' do
    visit techniques_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Technique was successfully destroyed'
  end
end
