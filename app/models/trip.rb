class Trip < ApplicationRecord
    has_many :newtables

    validates :name, presence: true
    validates :contact_no, presence: true
    validates :email_id, presence: true
    validates :no_of_people, presence: true
    validates :name_of_place, presence: true
    validates :date_for_tour, presence: true
    
end
