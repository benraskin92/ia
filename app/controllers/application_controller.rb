class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  def require_user
    if current_user
      true
    else
      redirect_to login_path, notice: "You must be logged in to access that page."
    end
  end
end
