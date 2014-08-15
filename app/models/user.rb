class User < ActiveRecord::Base
	has_many :events, through: :signups
	has_many :signups
	belongs_to :events

	before_save {self.email = email.downcase}

	before_save :hash_password
	validates :password, length: {minimum: 6}

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(?:\.[a-z\d\-]+)*\.[a-z]+\z/i

	validates :email, presence: :true,
				format: {with: VALID_EMAIL_REGEX},
				uniqueness: {case_sensitive: false}

	has_secure_password
	
	def hash_password
		self.password = Digest::SHA1.hexdigest(
		self.password.to_s)
	end

	

end
