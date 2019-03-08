class DashController < ApplicationController

	def index
  		@dash = Contato.order(:nome).page(params[:page])

  		if params[:keywords].present?
          # Diz ao elastickick para pesquisar as keyrwords nos campos name e description
          @busca = Contato.search params[:keywords], fields: [:nome]
      end
  	end



end
