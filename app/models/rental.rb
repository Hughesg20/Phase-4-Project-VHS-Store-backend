class Rental < ApplicationRecord
  belongs_to :client
  belongs_to :VHS_Tape
end
