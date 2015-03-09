require 'test_helper'

class DeveloperTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "there is data" do
    assert Developer.count > 0
  end

  test "Spok is here" do
    assert_equal "Spok", developers(:one).name
  end

  test "unique emails" do
    bad_spok = Developer.new(name: "Not Cher", email: "spok@gmail.com")
    refute bad_spok.save
  end

end
