class Place < ActiveRecord::Base
  belongs_to :user
  geocoded_by :address
  after_validation :geocode
  validates :name, presence: true, length: { minimum: 2, maximum: 40 }
  validates :address, presence: true, length: { minimum: 5, maximum: 200 }
  validates :description, presence: true, length: { minimum: 3, maximum: 600 }
end
