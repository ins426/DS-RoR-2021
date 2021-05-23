json.extract! comentario, :id, :cuerpo, :usuario_id, :coveet_id, :created_at, :updated_at
json.url comentario_url(comentario, format: :json)
