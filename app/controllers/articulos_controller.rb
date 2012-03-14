class ArticulosController < ApplicationController
  # GET /articulos
  # GET /articulos.xml
  def index
    @articulo = Articulo.new
    @articulos = Articulo.order('created_at DESC')

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @articulos }
    end
  end

  # GET /articulos/1
  # GET /articulos/1.xml
  def show
    @articulo = Articulo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @articulo }
    end
  end

  # GET /articulos/new
  # GET /articulos/new.xml
  def new
    @articulo = Articulo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @articulo }
    end
  end

  # GET /articulos/1/edit
  def edit
    @articulo = Articulo.find(params[:id])
  end

  # POST /articulos
  # POST /articulos.xml
  def create
    @articulo = Articulo.new(params[:articulo])

      if @articulo.save
        unless request.xhr?
          redirect_to(@articulo, :notice => 'Articulo was successfully created.') 
        end
      else
        render :action => "new" 
      end
  end

  # PUT /articulos/1
  # PUT /articulos/1.xml
  def update
    @articulo = Articulo.find(params[:id])

    respond_to do |format|
      if @articulo.update_attributes(params[:articulo])
        format.html { redirect_to(@articulo, :notice => 'Articulo was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @articulo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /articulos/1
  # DELETE /articulos/1.xml
  def destroy
    @articulo = Articulo.find(params[:id])
    @articulo.destroy

    unless request.xhr?
      redirect_to(articulos_url) 
    end
  end
end
