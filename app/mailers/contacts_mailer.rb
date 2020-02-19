class ContactsMailer < ApplicationMailer
  default from: 'josefine.thedenschow@gmail.com'

  def general_message(contact)
    @contact = contact
    mail(to: "josefine.thedenschow@gmail.com", subject: "You Have a Message From Your Website")
  end
end
