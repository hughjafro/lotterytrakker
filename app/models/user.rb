require 'bcrypt'

class User
	include Mongoid::Document

	attr_accessor :password, :password_confirmation

	field :name1, type: String
	field :name2, type: String
	field :email, type: String
	field :salt, type: String
	field :hashed_password, type: String

	def password
		@password = Password.new(hashed_password)
	end

	def password=(new_password)
		@password = Password.create(new_password)
		self.password_hash = @password
	end

	# def

end