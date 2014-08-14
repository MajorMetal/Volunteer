class User < ActiveRecord::Base
	has_many :events, through: :signups
	has_many :signups
	belongs_to :events
end
