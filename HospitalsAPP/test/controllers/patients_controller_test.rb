# frozen_string_literal: true

require 'test_helper'

class PatientsControllerTest < ActionDispatch::IntegrationTest # rubocop:todo Style/Documentation
  setup do
    @patient = patients(:one)
  end

  test 'should get index' do
    get patients_url
    assert_response :success
  end

  test 'should get new' do
    get new_patient_url
    assert_response :success
  end

  test 'should create patient' do
    assert_difference('Patient.count') do
      post patients_url,
           # rubocop:todo Layout/LineLength
           params: { patient: { age: @patient.age, doc_id: @patient.doc_id, padress: @patient.padress, pat_id: @patient.pat_id,
                                # rubocop:enable Layout/LineLength
                                pname: @patient.pname, pphone: @patient.pphone } }
    end

    assert_redirected_to patient_url(Patient.last)
  end

  test 'should show patient' do
    get patient_url(@patient)
    assert_response :success
  end

  test 'should get edit' do
    get edit_patient_url(@patient)
    assert_response :success
  end

  test 'should update patient' do
    patch patient_url(@patient),
          # rubocop:todo Layout/LineLength
          params: { patient: { age: @patient.age, doc_id: @patient.doc_id, padress: @patient.padress, pat_id: @patient.pat_id,
                               # rubocop:enable Layout/LineLength
                               pname: @patient.pname, pphone: @patient.pphone } }
    assert_redirected_to patient_url(@patient)
  end

  test 'should destroy patient' do
    assert_difference('Patient.count', -1) do
      delete patient_url(@patient)
    end

    assert_redirected_to patients_url
  end
end
