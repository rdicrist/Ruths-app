class MessageMailer < ActionMailer::Base

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.message.contact_me.subject
  #
  layout "mailer"
  
  def contact_me(message)
    @body = message.body

    mail to: "edicristoforo@gmail.com", from: message.email
  end
end
