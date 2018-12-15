require('minitest/autorun')
require('minitest/rg')
require_relative('../models/member')

class TestMember < Minitest::Test

  def setup
    options = {
      "id" => 1,
      "first_name" => "Keith",
      "last_name" => "Allan",
      "address" => "High St, Edinburgh",
      "age" => 30
    }
  @member = Member.new(options)
end

  def test_first_name()
    # @member1 = Member.new("Keith", "Allan")
    assert_equal("Keith", @member.first_name)
  end

  def test_last_name()
    assert_equal("Allan", @member.last_name)
  end

  def test_customer_address()
    assert_equal( "High St, Edinburgh", @member.address)
  end

  def test_customer_age
    assert_equal(30, @member.age)
  end

  def test_full_name
    assert_equal("Keith Allan", @member.full_name)
  end

end
