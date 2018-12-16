require('minitest/autorun')
require('minitest/rg')
require_relative('../activity')

class TestActivity < Minitest::Test

  def setup
    options = {
      "id" => 1,
      "activity_name" => "Yin Yoga",
      "category" => "Beginner"
    }
    @activity = Activity.new(options)
  end


  def test_class_has_name
    assert_equal("Yin Yoga", @activity.class_name)
  end

  def test_class_has_category
    assert_equal("Beginner", @activity.category)
  end


end
