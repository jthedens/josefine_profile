class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'

  def general_message(contact)
    @message = contact
    @my_email = ENV["EMAIL_USER"]
    mail(from: @message.email, to: "#{@my_email}", subject: "Message for Profilepage", name: @message.name, message: @message.message)
  end
end
