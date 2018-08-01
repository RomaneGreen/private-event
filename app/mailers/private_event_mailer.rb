class PrivateEventMailer < ApplicationMailer
  default from: 'romane71193@yahoo.com'
   layout "mailer"

  def welcome_email
     @user = params[:user]
    @url='localhost:3000/sessions/new'
    mail(to: 'romane71193@gmail.com', subject: 'Welcome to Private events')
  end
end
