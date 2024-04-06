# frozen_string_literal: true

require 'application_system_test_case'

class PatientsTest < ApplicationSystemTestCase # rubocop:todo Style/Documentation
  setup do
    @patient = patients(:one)
  end

  test 'visiting the index' do
    visit patients_url
    assert_selector 'h1', text: 'Patients'
  end

  test 'should create patient' do
    visit patients_url
    click_on 'New patient'

    fill_in 'Age', with: @patient.age
    fill_in 'Doc', with: @patient.doc_id
    fill_in 'Padress', with: @patient.padress
    fill_in 'Pat', with: @patient.pat_id
    fill_in 'Pname', with: @patient.pname
    fill_in 'Pphone', with: @patient.pphone
    click_on 'Create Patient'

    assert_text 'Patient was successfully created'
    click_on 'Back'
  end

  test 'should update Patient' do
    visit patient_url(@patient)
    click_on 'Edit this patient', match: :first

    fill_in 'Age', with: @patient.age
    fill_in 'Doc', with: @patient.doc_id
    fill_in 'Padress', with: @patient.padress
    fill_in 'Pat', with: @patient.pat_id
    fill_in 'Pname', with: @patient.pname
    fill_in 'Pphone', with: @patient.pphone
    click_on 'Update Patient'

    assert_text 'Patient was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Patient' do
    visit patient_url(@patient)
    click_on 'Destroy this patient', match: :first

    assert_text 'Patient was successfully destroyed'
  end
end
