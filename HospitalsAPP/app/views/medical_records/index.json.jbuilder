# frozen_string_literal: true

json.array! @medical_records, partial: 'medical_records/medical_record', as: :medical_record
