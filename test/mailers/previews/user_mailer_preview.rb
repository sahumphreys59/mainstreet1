# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/subscriber_mailer
  def subscriber_mailer
    UserMailer.subscriber_mailer
  end

end
