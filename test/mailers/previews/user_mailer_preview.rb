# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
  def thanks_email
    UserMailer.thanks_email(User.first)
  end
end
