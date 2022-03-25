class VhsTape < ApplicationRecord
  has_many :reviews
  has_many :rentals
  has_many :clients, through: :rentals
end
