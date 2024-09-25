class User::SessionsController < ApplicationController
  def create

  end

  def destroy
    sign_out current_user
  end
end
