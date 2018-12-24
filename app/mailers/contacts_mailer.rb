class ContactsMailer < ApplicationMailer

  def send_message(value)
    @email = value.email
    @body = value.body
    mail to: 'dwkovalev@gmail.com'
  end
end
