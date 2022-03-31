class VhsTape < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :rentals, dependent: :destroy
  has_many :clients, through: :rentals, dependent: :destroy
end
