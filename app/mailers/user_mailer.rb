class UserMailer < ApplicationMailer

  def thanks_email(user)
    @user = user
    @url = 'http://example.com/Login'

    if !user.emailaddress.empty?
      mail(to: @user.emailaddress, subject: 'Thank you for interest in Kevin & Sons Lawncare')
    end
  end
end
