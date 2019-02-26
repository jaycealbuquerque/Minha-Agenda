class DashController < ApplicationController

	def index
  		@contatos = Contato.where(user_id: current_user.id)
  	end

end
