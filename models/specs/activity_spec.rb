require('minitest/autorun')
require('minitest/rg')
require_relative('../activity')

class TestActivity < Minitest::Test

  def setup
    options = {
      "id" => 1,
      "activity_name" => "Yin Yoga",
      "category" => "Beginner",
      "description" => "Test"
      "capacity" => 10
    }
    @activity = Activity.new(options)
  end


  def test_activity_has_name
    assert_equal("Yin Yoga", @activity.class_name)
  end

  def test_activity_has_category
    assert_equal("Beginner", @activity.category)
  end

  def test_activity_has_description
    assert_equal("Test", @activity.description)
  end

  def test_activity_has_capacity
    assert_equal(10, @activity.capacity)
  end

end
