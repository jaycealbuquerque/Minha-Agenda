class ApplicationController < ActionController::Base
	before_action :authenticate_user!
	
	 # Set Layout
  layout :layout_by_resource

  protected

    def layout_by_resource
      if devise_controller? 
        "devise"
         
      else
        "tema"
      end
    end
end
