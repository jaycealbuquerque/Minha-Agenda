class TiposController < ApplicationController

	def index
		@tipos = Tipo.where(user_id: current_user.id)
	end

	def new
		
	end

end
