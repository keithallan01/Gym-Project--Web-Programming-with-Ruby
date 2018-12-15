require('minitest/autorun')
require('minitest/rg')
require_relative('../class')

class TestClass < Minitest::Test

  def setup
    options = {
      "id" => 1,
      "class_name" => "Yin Yoga",
      "category" => "Beginner"
    }
    @class = Class.new(options)
  end

  def test_class_has_name
    assert_equal("Yin Yoga", @class.class_name)
  end

  def test_class_has_category
    assert_equal("Beginner", @class.category)
  end

  def test_class_id
    assert_equal(1, @class.id)
  end

end
