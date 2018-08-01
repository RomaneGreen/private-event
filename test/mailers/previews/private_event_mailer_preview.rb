# Preview all emails at http://localhost:3000/rails/mailers/private_event_mailer
class PrivateEventMailerPreview < ActionMailer::Preview

  def welcome_preview
     PrivateEventMailer.welcome_email
  end

end
