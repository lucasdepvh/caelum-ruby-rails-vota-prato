class RestaurantesController < ApplicationController

def index
  render "index"
end

def index
  @restaurantes = Restaurante.order("nome").page(params['page']).per(3)
end

def show
  @restaurante = Restaurante.find(params[:id])
end

def new
  @restaurante = Restaurante.new
end

def index
  @restaurantes = Restaurante.order :nome

  respond_to do |format|
    format.html
  end
end

def restaurante_params
  params.require(:restaurante).permit(:nome, :endereco, :especialidade, :foto)
end

def busca
  @restaurante = Restaurante.find_by_nome(params[:nome])
  if @restaurante
    redirect_to :action => 'show', :id => @restaurante.id
  else    
    flash[:notice] = 'Restaurante não encontrado.'
    redirect_to :action => 'index'
  end
end

def create
  @restaurante = Restaurante.new(restaurante_params)
  if @restaurante.save
    redirect_to action: "show", id: @restaurante
  else
    render action: "new"
  end
end

def edit
  @restaurante = Restaurante.find(params[:id])
end

def update
  @restaurante = Restaurante.find params[:id]

  if @restaurante.update_attributes(restaurante_params)
    redirect_to action: "show", id: @restaurante
  else
    render action: "edit"
  end
end


end

