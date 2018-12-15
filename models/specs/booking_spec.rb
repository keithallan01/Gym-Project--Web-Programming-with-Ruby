require('minitest/autorun')
require('minitest/rg')
require_relative('../booking')

class TestBooking < Minitest::Test

  def setup
    options = {
      "id" => 1,
      "studio_name" => "Serenity Now!",
      "member_id" => 1,
      "class_id" => 1,
    }
    @booking = Booking.new(options)
  end

  def test_studio_has_name
    assert_equal("Serenity Now!", @booking.studio_name)
  end

  def test_studio_has_member
    assert_equal(1, @booking.member_id)
  end

  def test_studio_has_class
    assert_equal(1, @booking.class_id)
  end


end
