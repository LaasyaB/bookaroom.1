json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :room_id, :user_id, :reserve_from, :reserve_upto, :reservation_details, :status
  json.url reservation_url(reservation, format: :json)
end
