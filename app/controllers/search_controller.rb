class SearchController < ApplicationController

	def index
		
		if params[:q].present?
	          # Diz ao elastickick para pesquisar as keyrwords nos campos name e description
	          @busca = Contato.search params[:q], fields: [:nome]
	    end
		
	end
end


