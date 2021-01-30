class WelcomeController < ApplicationController
  def index
    if session[:user_id]
      redirect_to repos_path
    end
  end
end
