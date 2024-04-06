# frozen_string_literal: true

require 'application_system_test_case'

class MedicalRecordsTest < ApplicationSystemTestCase # rubocop:todo Style/Documentation
  setup do
    @medical_record = medical_records(:one)
  end

  test 'visiting the index' do
    visit medical_records_url
    assert_selector 'h1', text: 'Medical records'
  end

  test 'should create medical record' do
    visit medical_records_url
    click_on 'New medical record'

    fill_in 'Date', with: @medical_record.date
    fill_in 'Doc', with: @medical_record.doc_id
    fill_in 'Mrec', with: @medical_record.mrec_id
    fill_in 'Pat', with: @medical_record.pat_id
    fill_in 'Problem', with: @medical_record.problem
    click_on 'Create Medical record'

    assert_text 'Medical record was successfully created'
    click_on 'Back'
  end

  test 'should update Medical record' do
    visit medical_record_url(@medical_record)
    click_on 'Edit this medical record', match: :first

    fill_in 'Date', with: @medical_record.date
    fill_in 'Doc', with: @medical_record.doc_id
    fill_in 'Mrec', with: @medical_record.mrec_id
    fill_in 'Pat', with: @medical_record.pat_id
    fill_in 'Problem', with: @medical_record.problem
    click_on 'Update Medical record'

    assert_text 'Medical record was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Medical record' do
    visit medical_record_url(@medical_record)
    click_on 'Destroy this medical record', match: :first

    assert_text 'Medical record was successfully destroyed'
  end
end
