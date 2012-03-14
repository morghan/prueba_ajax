class ContenidosController < ApplicationController
  def create
    @articulo = Articulo.find(params[:articulo_id])
    @contenido = @articulo.contenidos.new(params[:contenido])
		if @contenido.save
			unless request.xhr?
    		redirect_to articulo_path(@articulo)
 			end
		end
  end

  def destroy
    @articulo = Articulo.find(params[:articulo_id])
    @contenido = @articulo.contenidos.find(params[:id])
    @contenido.destroy
    unless request.xhr?
      redirect_to articulo_path(@articulo)
    end
  end

end
