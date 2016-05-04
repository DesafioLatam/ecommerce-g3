require 'test_helper'

class CartTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "if the cart is close we create a new one for the same user" do
    user = users(:one)
    user.last_cart.close!
    # user has 2 carts in the fixtures
    # plus the new one
    assert_equal 3, user.carts.count()
  end

  test "dont create a new cart if a cart already closed is saved" do
    user = users(:one)
    user.carts.first.save
    assert_equal 2, user.carts.count()
  end
end
