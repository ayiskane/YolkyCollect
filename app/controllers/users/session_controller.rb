class User::SessionsController < ApplicationController
  def destroy
    sign_out current_user
  end
end
