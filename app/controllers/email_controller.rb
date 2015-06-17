class EmailController < ApplicationController
  def new
    @user  = User.new
    @email = Email.new
  end

  def create
    @user  = User.create(user_params)
    @email = Email.create(body: email_params, user_id: @user.id)

    respond_to do |format|
      if @user.save && @email.save
        #onSuccessful save send email
        UserMailer.thanks_email(@user).deliver_now

        format.html { redirect_to(root_path, notice: 'User was successfully created.') }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  def user_params
    params.require(:user).permit(:firstname, :lastname, :phone, :street, :zip, :emailaddress)
  end

  def email_params
    params.require(:email).permit(:body)
  end
end
