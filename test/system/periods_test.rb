# frozen_string_literal: true

require 'application_system_test_case'

class PeriodsTest < ApplicationSystemTestCase
  setup do
    @period = periods(:one)
  end

  test 'visiting the index' do
    visit periods_url
    assert_selector 'h1', text: 'Periods'
  end

  test 'creating a Period' do
    visit periods_url
    click_on 'New Period'

    fill_in 'Description', with: @period.description
    fill_in 'Description md', with: @period.description_md
    fill_in 'End date', with: @period.end_date
    fill_in 'Name', with: @period.name
    fill_in 'Start date', with: @period.start_date
    click_on 'Create Period'

    assert_text 'Period was successfully created'
    click_on 'Back'
  end

  test 'updating a Period' do
    visit periods_url
    click_on 'Edit', match: :first

    fill_in 'Description', with: @period.description
    fill_in 'Description md', with: @period.description_md
    fill_in 'End date', with: @period.end_date
    fill_in 'Name', with: @period.name
    fill_in 'Start date', with: @period.start_date
    click_on 'Update Period'

    assert_text 'Period was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Period' do
    visit periods_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Period was successfully destroyed'
  end
end
