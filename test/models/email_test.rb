require 'test_helper'

class EmailTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "should not save email without user" do
    email = Email.create(:user => nil)
    assert_not email.save
  end

  test "should save email with user" do
    email = Email.create(user: users(:max))
    assert email.save
  end
end

