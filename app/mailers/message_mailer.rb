class MessageMailer < ApplicationMailer
  require 'mailgun'

  def contact(message)
    # @name = message.name
    # @body = message.body

    mg_client = Mailgun::Client.new ENV['mailgun_secret_api_key']
    message_params = { from: message.email,
                       to: 'josefine.thedenschow@gmail.com',
                       subject: 'Contact Form',
                       text: message.body }
    mg_client.send_message ENV['mailgun_domain'], message_params
  end
end
