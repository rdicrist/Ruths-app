class MessageMailer < ActionMailer::Base
require "mailgun-ruby"
  layout "mailer"
  
  def contact_me(message)
    @body = message.body
    mg_client = Mailgun::Client.new ENV['mailgun_secret_api_key']
    message_params = {:from => message.email,
                      :to => ENV['email'],
                      :subject => 'Contact Form',
                      :text => message.body}
    mg_client.send_message ENV['mailgun_domain'], message_params

  end
end
