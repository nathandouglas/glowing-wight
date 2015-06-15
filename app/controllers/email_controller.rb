class EmailController < ApplicationController
  def new
    @user = User.new
    @email = Email.new
  end

  def create
    @user = User.create(user_params)
    @email = Email.create(body: email_params, user_id: @user.id)
  end

  private
  def user_params
    params.require(:user).permit(:firstname, :lastname, :phone, :street, :zip, :emailaddress)
  end

  def email_params
    params.require(:email).permit(:body)
  end
end
