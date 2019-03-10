class Place < ApplicationRecord
    
    validates :area, presence: :true, uniqueness: true
    validates :detail, presence: :true, uniqueness: true
    
    has_many :reports
    
end

        