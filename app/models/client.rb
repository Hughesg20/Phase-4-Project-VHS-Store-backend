class Client < ApplicationRecord
    has_secure_password

    has_many :rentals
    has_many :vhs_tapes, through: :rentals

    validates :first_name, presence: true 
    validates :last_name, presence: true 
    
    validates :email, format: /\w+@\w+\.{1}[a-zA-Z]{2,}/, presence: true, uniqueness: true
    validates :age, presence: true, numericality: { greater_than_or_equal_to: 18 }
    validates :username, presence: true, uniqueness: true
    


    
end
