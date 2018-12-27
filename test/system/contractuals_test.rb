require 'application_system_test_case'

class ContractualsTest < ApplicationSystemTestCase
  setup do
    @contractual = contractuals(:one)
  end

  test 'visiting the index' do
    visit contractuals_url
    assert_selector 'h1', text: 'Contractuals'
  end

  test 'creating a Contractual' do
    visit contractuals_url
    click_on 'New Contractual'

    fill_in 'Agent', with: @contractual.agent
    fill_in 'Nui', with: @contractual.nui
    fill_in 'Player Type', with: @contractual.player_type
    click_on 'Create Contractual'

    assert_text 'Contractual was successfully created'
    click_on 'Back'
  end

  test 'updating a Contractual' do
    visit contractuals_url
    click_on 'Edit', match: :first

    fill_in 'Agent', with: @contractual.agent
    fill_in 'Nui', with: @contractual.nui
    fill_in 'Player Type', with: @contractual.player_type
    click_on 'Update Contractual'

    assert_text 'Contractual was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Contractual' do
    visit contractuals_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Contractual was successfully destroyed'
  end
end
