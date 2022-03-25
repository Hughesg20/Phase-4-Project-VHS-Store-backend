class Client < ApplicationRecord
    has_many :rentals
    has_many :vhs_tapes, through: :rentals
end
