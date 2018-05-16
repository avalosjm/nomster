class Place < ApplicationRecord

belongs_to :user
has_many :comments
has_many :photos #added for lesson 39

geocoded_by :address
after_validation :geocode

validates :name, presence: true, length: { minimum: 4 }
validates :address, presence: true
validates :description, presence: true

end
