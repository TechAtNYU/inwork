class ApplicationController < ActionController::Base
  protect_from_forgery

  USERS = { ENV['APP_USERNAME'] => ENV['APP_PASSWORD'] }
 
  before_filter :authenticate
 
  private
 
  def authenticate
    return true unless Rails.env.production? #production only
    authenticate_or_request_with_http_digest do |username|
      USERS[username]
    end
  end
end
