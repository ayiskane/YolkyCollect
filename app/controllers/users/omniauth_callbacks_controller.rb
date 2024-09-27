class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def discord
    auth_hash = request.env['omniauth.auth']
    @user = User.set_data_from_omniauth(auth_hash)

    if @user
       sign_in_and_redirect @user, event: :authentication
       set_flash_message(:notice, :success, kind: 'Discord') if is_navigational_format?
    else
      session['devise.discord_data'] = auth_hash
      redirect_to root_path 
    end
  end

  def failure
    redirect_to root_path
  end
end