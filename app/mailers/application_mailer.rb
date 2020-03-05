class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'

  def general_message(contact)
    @message = contact
    mail(from: @message.email, to: "josefine.thedenschow@gmail.com", subject: "Message for Profilepage", name: @message.name, message: @message.message)
  end
end
