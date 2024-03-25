require "application_system_test_case"

class MedicalCardsTest < ApplicationSystemTestCase
  setup do
    @medical_card = medical_cards(:one)
  end

  test "visiting the index" do
    visit medical_cards_url
    assert_selector "h1", text: "Medical cards"
  end

  test "should create medical card" do
    visit medical_cards_url
    click_on "New medical card"

    fill_in "Diagnosis", with: @medical_card.diagnosis
    fill_in "Doctor", with: @medical_card.doctor_id
    fill_in "Hospital", with: @medical_card.hospital_id
    fill_in "Medical card", with: @medical_card.medical_card_id
    fill_in "Patient", with: @medical_card.patient_id
    click_on "Create Medical card"

    assert_text "Medical card was successfully created"
    click_on "Back"
  end

  test "should update Medical card" do
    visit medical_card_url(@medical_card)
    click_on "Edit this medical card", match: :first

    fill_in "Diagnosis", with: @medical_card.diagnosis
    fill_in "Doctor", with: @medical_card.doctor_id
    fill_in "Hospital", with: @medical_card.hospital_id
    fill_in "Medical card", with: @medical_card.medical_card_id
    fill_in "Patient", with: @medical_card.patient_id
    click_on "Update Medical card"

    assert_text "Medical card was successfully updated"
    click_on "Back"
  end

  test "should destroy Medical card" do
    visit medical_card_url(@medical_card)
    click_on "Destroy this medical card", match: :first

    assert_text "Medical card was successfully destroyed"
  end
end
