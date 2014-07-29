class Booking < ActiveRecord::Base
	belongs_to :flight
	has_many :groups
	has_many :passengers, through: :groups
	accepts_nested_attributes_for :passengers
end
