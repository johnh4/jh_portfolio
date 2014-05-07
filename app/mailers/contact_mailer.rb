class ContactMailer < ActionMailer::Base
  default to: "jehowl4@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.contact_me.subject
  #
  def contact_me(contact_form)
    @from = contact_form.email
    @message = contact_form.message
    @name = contact_form.name
    if contact_form.name.presence
      subject = "Portfolio: A message from #{contact_form.name}" 
    else
      subject = "Portfolio: A message from an unnamed visitor to your site."
    end
    mail from: contact_form.email,subject: subject
  end
end
