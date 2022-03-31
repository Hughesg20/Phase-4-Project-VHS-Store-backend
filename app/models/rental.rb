class Rental < ApplicationRecord
  belongs_to :client
  belongs_to :vhs_tape
end
