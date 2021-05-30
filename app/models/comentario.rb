class Comentario < ApplicationRecord
  belongs_to :usuario
  belongs_to :coveet

  validates :cuerpo, length: {minimum: 2}
end
