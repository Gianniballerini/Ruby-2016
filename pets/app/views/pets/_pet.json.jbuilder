json.extract! pet, :id, :breed_id, :name, :created_at, :updated_at
json.url pet_url(pet, format: :json)