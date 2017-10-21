class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :login

  def login
    @user = User.new
  end
end
