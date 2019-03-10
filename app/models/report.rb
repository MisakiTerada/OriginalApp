class Report < ApplicationRecord
  belongs_to :user
  belongs_to :place,optional: true
  
  validates :content, presence: true, length: { maximum: 255 }
  validates :date, presence: true
  validates :people, presence: true
end
