class TiposController < ApplicationController

	def index
		@tipos = Tipo.where(user_id: current_user.id)
	end

	def new
		@tipo = Tipo.new
	end

	def create
  		@tipo = Tipo.new(contato_params)
    	@tipo.user = current_user

  	
     	if @tipo.save
        	redirect_to tipos_path
      	else
        	render :new 
      	end

  	end





  	private

    

  	def contato_params
  		params.require(:tipo).permit(:nome, :descricao)
  	end

end
