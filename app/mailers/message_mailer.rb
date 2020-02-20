class MessageMailer < ApplicationMailer
  require 'mailgun-ruby'

  def contact(message)
    @name = message.name
    @body = message.body

    mg_client = Mailgun::Client.new ENV['mailgun_secret_api_key']
    message_params = { from: message.email,
                       to: 'josefine.thedenschow@gmail.com',
                       subject: 'Contact Form',
                       text: message.body }
    mg_client.send_message 'sandboxc185d83d8d624e7789152637d6e1a1d0.mailgun.org', message_params
  end
end
