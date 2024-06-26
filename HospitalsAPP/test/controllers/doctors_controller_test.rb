# frozen_string_literal: true

require 'test_helper'

class DoctorsControllerTest < ActionDispatch::IntegrationTest # rubocop:todo Style/Documentation
  setup do
    @doctor = doctors(:one)
  end

  test 'should get index' do
    get doctors_url
    assert_response :success
  end

  test 'should get new' do
    get new_doctor_url
    assert_response :success
  end

  test 'should create doctor' do
    assert_difference('Doctor.count') do
      post doctors_url,
           # rubocop:todo Layout/LineLength
           params: { doctor: { dname: @doctor.dname, dock_id: @doctor.dock_id, dphone: @doctor.dphone, hos_id: @doctor.hos_id,
                               # rubocop:enable Layout/LineLength
                               spec: @doctor.spec } }
    end

    assert_redirected_to doctor_url(Doctor.last)
  end

  test 'should show doctor' do
    get doctor_url(@doctor)
    assert_response :success
  end

  test 'should get edit' do
    get edit_doctor_url(@doctor)
    assert_response :success
  end

  test 'should update doctor' do
    patch doctor_url(@doctor),
          # rubocop:todo Layout/LineLength
          params: { doctor: { dname: @doctor.dname, dock_id: @doctor.dock_id, dphone: @doctor.dphone, hos_id: @doctor.hos_id,
                              # rubocop:enable Layout/LineLength
                              spec: @doctor.spec } }
    assert_redirected_to doctor_url(@doctor)
  end

  test 'should destroy doctor' do
    assert_difference('Doctor.count', -1) do
      delete doctor_url(@doctor)
    end

    assert_redirected_to doctors_url
  end
end
