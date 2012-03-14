module ArticulosHelper
  def links_articulo(articulo)
    if action_name == "index" || action_name == "create"
      link_to("Mostrar Articulo", articulo) + " | " +
      link_to('Borrar', articulo, :confirm => "Seguro?", :method => :delete, :remote => true)
    else
      link_to('Edit', edit_articulo_path(@articulo)) + " | " +
      link_to('Back', articulos_path)
    end
  end
end
