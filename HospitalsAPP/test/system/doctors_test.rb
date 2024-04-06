# frozen_string_literal: true

require 'application_system_test_case'

class DoctorsTest < ApplicationSystemTestCase # rubocop:todo Style/Documentation
  setup do
    @doctor = doctors(:one)
  end

  test 'visiting the index' do
    visit doctors_url
    assert_selector 'h1', text: 'Doctors'
  end

  test 'should create doctor' do
    visit doctors_url
    click_on 'New doctor'

    fill_in 'Dname', with: @doctor.dname
    fill_in 'Dock', with: @doctor.dock_id
    fill_in 'Dphone', with: @doctor.dphone
    fill_in 'Hos', with: @doctor.hos_id
    fill_in 'Spec', with: @doctor.spec
    click_on 'Create Doctor'

    assert_text 'Doctor was successfully created'
    click_on 'Back'
  end

  test 'should update Doctor' do
    visit doctor_url(@doctor)
    click_on 'Edit this doctor', match: :first

    fill_in 'Dname', with: @doctor.dname
    fill_in 'Dock', with: @doctor.dock_id
    fill_in 'Dphone', with: @doctor.dphone
    fill_in 'Hos', with: @doctor.hos_id
    fill_in 'Spec', with: @doctor.spec
    click_on 'Update Doctor'

    assert_text 'Doctor was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Doctor' do
    visit doctor_url(@doctor)
    click_on 'Destroy this doctor', match: :first

    assert_text 'Doctor was successfully destroyed'
  end
end
