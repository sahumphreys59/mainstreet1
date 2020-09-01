class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.subscriber_mailer.subject
  #
  def newsletter_mailer
    emails = Subscriber.all
    mail(to: emails, subject: "Hi, this is a test mail.")
  end
end
