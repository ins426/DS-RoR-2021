class Like < ApplicationRecord
  belongs_to :usuario
  belongs_to :coveet
  validates :coveet_id, uniqueness: { scope: :usuario, message: "No es posible repetir un like"}
end
