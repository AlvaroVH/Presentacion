json.array!(@contactos) do |contacto|
  json.extract! contacto, :id, :nombre, :telefono
  json.url contacto_url(contacto, format: :json)
end
