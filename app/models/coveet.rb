class Coveet < ApplicationRecord
  belongs_to :usuario

  validates :cuerpo, length: {minimum: 2}
end
