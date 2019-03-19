class SearchController < ApplicationController

	def index
		
		if params[:q].present?
	          # Diz ao elastickick para pesquisar as keyrwords nos campos name e description
	          @busca = Contato.search params[:q], fields: [:nome], match: :word_middle, page: params[:page], per_page: 2

	    end
		
	end
end


