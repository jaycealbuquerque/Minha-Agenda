class ApplicationController < ActionController::Base
	before_action :authenticate_user!
	layout 'tema'
end
