# frozen_string_literal: true

json.extract! record, :id, :card_id, :doctor_id, :conclusion, :created_at, :updated_at
json.url record_url(record, format: :json)
