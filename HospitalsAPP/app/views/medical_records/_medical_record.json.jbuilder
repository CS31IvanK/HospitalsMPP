json.extract! medical_record, :id, :mrec_id, :date, :problem, :pat_id, :doc_id, :created_at, :updated_at
json.url medical_record_url(medical_record, format: :json)
