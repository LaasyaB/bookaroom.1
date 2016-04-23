json.array!(@room_types) do |room_type|
  json.extract! room_type, :id, :room_id, :title, :description
  json.url room_type_url(room_type, format: :json)
end
