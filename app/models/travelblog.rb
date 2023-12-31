class Travelblog < ApplicationRecord
    has_many :trip
    validates :name, presence: true
    validates :place_to_visit, presence: true 
    validates :contact_number, presence:true 
    validates :email_id, presence:true 
end
