class UserMailer < ActionMailer::Base
  default from: 'notifications@example.com'

   def notification_email(message)
    @message = message
    mail(to: message.email, subject: "List of best books")
  end
end
