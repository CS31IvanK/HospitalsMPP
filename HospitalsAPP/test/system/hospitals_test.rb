# frozen_string_literal: true

require 'application_system_test_case'

class HospitalsTest < ApplicationSystemTestCase # rubocop:todo Style/Documentation
  setup do
    @hospital = hospitals(:one)
  end

  test 'visiting the index' do
    visit hospitals_url
    assert_selector 'h1', text: 'Hospitals'
  end

  test 'should create hospital' do
    visit hospitals_url
    click_on 'New hospital'

    fill_in 'Haddress', with: @hospital.haddress
    fill_in 'Hid', with: @hospital.hid
    fill_in 'Hname', with: @hospital.hname
    fill_in 'Hphone', with: @hospital.hphone
    click_on 'Create Hospital'

    assert_text 'Hospital was successfully created'
    click_on 'Back'
  end

  test 'should update Hospital' do
    visit hospital_url(@hospital)
    click_on 'Edit this hospital', match: :first

    fill_in 'Haddress', with: @hospital.haddress
    fill_in 'Hid', with: @hospital.hid
    fill_in 'Hname', with: @hospital.hname
    fill_in 'Hphone', with: @hospital.hphone
    click_on 'Update Hospital'

    assert_text 'Hospital was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Hospital' do
    visit hospital_url(@hospital)
    click_on 'Destroy this hospital', match: :first

    assert_text 'Hospital was successfully destroyed'
  end
end
