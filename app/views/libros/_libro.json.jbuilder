json.extract! libro, :id, :isbn, :titulo, :descripcion, :stock, :costo, :editorial, :autor, :clasificacion, :created_at, :updated_at
json.url libro_url(libro, format: :json)