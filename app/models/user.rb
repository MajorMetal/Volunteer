class User < ActiveRecord::Base
	has_many :events, through: :signups
	has_many :signups
	belongs_to :events

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(?:\.[a-z\d\-]+)*\.[a-z]+\z/i
	before_save {self.email = email.downcase}
	
	validates :email, presence: :true,
				format: {with: VALID_EMAIL_REGEX},
				uniqueness: {case_sensitive: false}

	validates :password, length: {minimum: 6}

	before_create :create_remember_token
	has_secure_password
	
	def User.new_remember_token
		SecureRandom.urlsafe_base64
	end

	def User.digest(token)
		Digest::SHA1.hexdigest(token.to_s)
	end

	private
	def create_remember_token
		self.remember_token = User.digest(User.new_remember_token)
	end

end

	
	# before_save :hash_password
	
	# def hash_password
	# 	self.password = Digest::SHA1.hexdigest(
	# 	self.password.to_s)
	# end
