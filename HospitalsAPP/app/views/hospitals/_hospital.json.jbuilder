json.extract! hospital, :id, :hid, :hname, :haddress, :hphone, :created_at, :updated_at
json.url hospital_url(hospital, format: :json)
