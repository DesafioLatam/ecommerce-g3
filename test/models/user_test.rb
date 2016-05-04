require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  #Remember: for testing an after create we cant use fixtures
  test "after user creation a cart must be created" do
    u = User.create(email:"usuario1@gmail.com", password:"12345678")
    assert_not_nil u.last_cart.nil?
  end

  test "after user creation a cart must be open" do
    u = User.create(email:"usuario2@gmail.com", password:"12345678")
    assert u.last_cart.open?
  end

end
