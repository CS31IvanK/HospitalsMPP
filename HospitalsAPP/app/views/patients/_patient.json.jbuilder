json.extract! patient, :id, :pat_id, :pname, :padress, :pphone, :age, :doc_id, :created_at, :updated_at
json.url patient_url(patient, format: :json)
