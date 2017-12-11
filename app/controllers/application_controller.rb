class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  #forma para que el usuario se logee
  before_action :authenticate_user!
end
