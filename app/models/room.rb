class Room < ActiveRecord::Base
  has_many :reservations
  has_one :room_type
end
