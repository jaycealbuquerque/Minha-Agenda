class DashController < ApplicationController

	def index
  		@dash = Contato.order(:nome).page(params[:page])
  	end



end
