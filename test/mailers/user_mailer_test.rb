require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "subscriber_mailer" do
    mail = UserMailer.subscriber_mailer
    assert_equal "Subscriber mailer", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
