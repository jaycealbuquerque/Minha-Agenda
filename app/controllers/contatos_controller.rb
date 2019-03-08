class ContatosController < ApplicationController
  
  before_action :set_contato, only: [:show, :edit, :update, :destroy]
  
  def index
  	@contatos = Contato.where(user_id: current_user.id)

    if params[:keywords].present?
          # Diz ao elastickick para pesquisar as keyrwords nos campos name e description
          @series = Contato.search params[:keywords], fields: [:nome]
      end
  end

  def new
  	@contato = Contato.new
  end

  def create
  	@contato = Contato.new(contato_params)
    @contato.user = current_user

  	
     if @contato.save
        redirect_to contatos_path
      else
        render :new 
        
      end

  end

  def show
  	@contato = Contato.find(params[:id])
    
  end

  


  def edit
  	@contato = Contato.find(params[:id])
  end

  def update
  	@contato = Contato.find(params[:id])
  	@contato.update(contato_params)

  	redirect_to contatos_path
  end


  private

    def set_contato
      @contato = Contato.find(params[:id])
    end

  	def contato_params
  		params.require(:contato).permit(:nome, :telefone, :tipo_id)
  	end
  	
  
end
