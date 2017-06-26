class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
<<<<<<< HEAD
=======

>>>>>>> 3817c6139f353c79337e72f482304d30e6969c11
end
