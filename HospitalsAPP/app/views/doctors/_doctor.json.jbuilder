# frozen_string_literal: true

json.extract! doctor, :id, :dock_id, :dname, :spec, :dphone, :hos_id, :created_at, :updated_at
json.url doctor_url(doctor, format: :json)
