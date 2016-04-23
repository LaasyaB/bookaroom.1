require 'rails_helper'

RSpec.describe "reservations/new", type: :view do
  before(:each) do
    assign(:reservation, Reservation.new(
      :room => nil,
      :user => nil,
      :reservation_details => "MyText",
      :status => "MyString"
    ))
  end

  it "renders new reservation form" do
    render

    assert_select "form[action=?][method=?]", reservations_path, "post" do

      assert_select "input#reservation_room_id[name=?]", "reservation[room_id]"

      assert_select "input#reservation_user_id[name=?]", "reservation[user_id]"

      assert_select "textarea#reservation_reservation_details[name=?]", "reservation[reservation_details]"

      assert_select "input#reservation_status[name=?]", "reservation[status]"
    end
  end
end
