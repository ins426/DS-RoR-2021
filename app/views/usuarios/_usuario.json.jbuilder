json.extract! usuario, :id, :username, :pass, :isAdmin, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
