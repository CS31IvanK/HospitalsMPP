# frozen_string_literal: true

require 'application_system_test_case'

class RecordsTest < ApplicationSystemTestCase # rubocop:todo Style/Documentation
  setup do
    @record = records(:one)
  end

  test 'visiting the index' do
    visit records_url
    assert_selector 'h1', text: 'Records'
  end

  test 'should create record' do
    visit records_url
    click_on 'New record'

    fill_in 'Card', with: @record.card_id
    fill_in 'Conclusion', with: @record.conclusion
    fill_in 'Doctor', with: @record.doctor_id
    click_on 'Create Record'

    assert_text 'Record was successfully created'
    click_on 'Back'
  end

  test 'should update Record' do
    visit record_url(@record)
    click_on 'Edit this record', match: :first

    fill_in 'Card', with: @record.card_id
    fill_in 'Conclusion', with: @record.conclusion
    fill_in 'Doctor', with: @record.doctor_id
    click_on 'Update Record'

    assert_text 'Record was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Record' do
    visit record_url(@record)
    click_on 'Destroy this record', match: :first

    assert_text 'Record was successfully destroyed'
  end
end
