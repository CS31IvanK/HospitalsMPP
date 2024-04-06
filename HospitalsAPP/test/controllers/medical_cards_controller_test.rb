# frozen_string_literal: true

require 'test_helper'

class MedicalCardsControllerTest < ActionDispatch::IntegrationTest # rubocop:todo Style/Documentation
  setup do
    @medical_card = medical_cards(:one)
  end

  test 'should get index' do
    get medical_cards_url
    assert_response :success
  end

  test 'should get new' do
    get new_medical_card_url
    assert_response :success
  end

  test 'should create medical_card' do
    assert_difference('MedicalCard.count') do
      post medical_cards_url,
           params: { medical_card: { diagnosis: @medical_card.diagnosis, doctor_id: @medical_card.doctor_id,
                                     # rubocop:todo Layout/LineLength
                                     hospital_id: @medical_card.hospital_id, medical_card_id: @medical_card.medical_card_id, patient_id: @medical_card.patient_id } }
      # rubocop:enable Layout/LineLength
    end

    assert_redirected_to medical_card_url(MedicalCard.last)
  end

  test 'should show medical_card' do
    get medical_card_url(@medical_card)
    assert_response :success
  end

  test 'should get edit' do
    get edit_medical_card_url(@medical_card)
    assert_response :success
  end

  test 'should update medical_card' do
    patch medical_card_url(@medical_card),
          params: { medical_card: { diagnosis: @medical_card.diagnosis, doctor_id: @medical_card.doctor_id,
                                    # rubocop:todo Layout/LineLength
                                    hospital_id: @medical_card.hospital_id, medical_card_id: @medical_card.medical_card_id, patient_id: @medical_card.patient_id } }
    # rubocop:enable Layout/LineLength
    assert_redirected_to medical_card_url(@medical_card)
  end

  test 'should destroy medical_card' do
    assert_difference('MedicalCard.count', -1) do
      delete medical_card_url(@medical_card)
    end

    assert_redirected_to medical_cards_url
  end
end
