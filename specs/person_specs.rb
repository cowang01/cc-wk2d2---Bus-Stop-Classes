# Step 2
#
# Create a Person class.
# The Person class should have attributes of a name and age.


require('minitest/autorun')
require('minitest/rg')
require_relative('../person.rb')


class PersonTest < MiniTest::Test

  def setup
    @person_1 = Person.new("Simon", 24)
  end


  def test_person_get_age
    assert_equal(24, @person_1.age)
  end



end
