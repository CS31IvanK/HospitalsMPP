# frozen_string_literal: true

json.extract! medical_card, :id, :medical_card_id, :patient_id, :doctor_id, :hospital_id, :diagnosis, :created_at,
              :updated_at
json.url medical_card_url(medical_card, format: :json)
