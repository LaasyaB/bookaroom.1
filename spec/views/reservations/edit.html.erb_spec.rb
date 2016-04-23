require 'rails_helper'

RSpec.describe "reservations/edit", type: :view do
  before(:each) do
    @reservation = assign(:reservation, Reservation.create!(
      :room => nil,
      :user => nil,
      :reservation_details => "MyText",
      :status => "MyString"
    ))
  end

  it "renders the edit reservation form" do
    render

    assert_select "form[action=?][method=?]", reservation_path(@reservation), "post" do

      assert_select "input#reservation_room_id[name=?]", "reservation[room_id]"

      assert_select "input#reservation_user_id[name=?]", "reservation[user_id]"

      assert_select "textarea#reservation_reservation_details[name=?]", "reservation[reservation_details]"

      assert_select "input#reservation_status[name=?]", "reservation[status]"
    end
  end
end
