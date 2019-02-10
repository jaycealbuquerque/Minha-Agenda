class ContatosController < ApplicationController
  
  def index
  	@contatos = Contato.all
  end

  def new
  	@contato = Contato.new
  end

  def create
  	@contato = Contato.create(contato_params)

  	redirect_to contatos_path

  end


  private

  	def contato_params
  		params.require(:contato).permit(:nome, :telefone)
  	end
  	
  
end
