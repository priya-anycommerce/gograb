class UserMailer < ActionMailer::Base
  default from: "admin@gograb.com"
   def welcome_email(user)
     puts "Mailer"
    @user = user
    puts @user.inspect
    @url  = 'http://www.gograb.in'
    mail(to: @user.email, subject: 'Welcome to GoGrab Site')
    
  end
end
