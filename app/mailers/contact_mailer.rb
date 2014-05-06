class ContactMailer < ActionMailer::Base
  default from: "jehowl4@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.contact_me.subject
  #
  def contact_me(contact_form)
    @from = contact_form.email
    @message = contact_form.message
    mail to: contact_form.email, subject: contact_form.subject
  end
end
