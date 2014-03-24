class ApplicationController < ActionController::Base
  # After sign in redirect to admin index page
  def after_sign_in_path_for(resource)
  posts_path
end
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end