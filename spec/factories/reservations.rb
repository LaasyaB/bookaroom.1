FactoryGirl.define do
  factory :reservation do
    room nil
    user nil
    reserve_from "2016-04-23 11:08:57"
    reserve_upto "2016-04-23 11:08:57"
    reservation_details "MyText"
    status "MyString"
  end
end
