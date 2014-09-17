class UserMailer < ActionMailer::Base
  default from: "dunphy.ben@gmail.com"

  def welcome_email(user)
    @user = user
    @url  = 'http://presentathon.com/login'
    mail(to: @user.email, subject: 'Thank you for signing up')
  end

  def user_name(username)
  	@username = username
  end
end
