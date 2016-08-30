require 'test_helper'

class MicropostTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name:  "Example User",
                 email: "example@railstutorial.org",
                 password:              "foobar",
                 password_confirmation: "foobar",
                 activated: true,
                 activated_at: Time.now)

    @m = Micropost.new(context: "Hi, I'm paul from the block", user_id: @user.id)
  end

  test "should not be valid" do
    @m.user_id = nil
    assert_not @m.valid?
  end

  test "should have content" do
    @m.context = "      "
    assert @m.valid?
  end
end
