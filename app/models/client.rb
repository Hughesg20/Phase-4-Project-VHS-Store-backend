class Client < ApplicationRecord
    has_secure_password

    has_many :rentals
    has_many :vhs_tapes, through: :rentals

    validates :first_name, length: {maximum: 50}
    validates :last_name, length: {maximum: 50}
    
    validates :email, format: /\w+@\w+\.{1}[a-zA-Z]{2,}/, uniqueness: true
    validates :age, numericality: { greater_than_or_equal_to: 18 }
    validates :username, presence: true, uniqueness: true , length: {maximum: 20}
    


    
end
