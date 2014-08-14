class Event < ActiveRecord::Base
	has_many :users, through: :signups
	has_many :signups
	belongs_to :users
end
