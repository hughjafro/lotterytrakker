class UsersController < ApplicationController

	def new
		@user = User.new
	end


	def create
		@user = User.create(params[:user].permit(:email, :password, :password_confirmation))
		redirect_to #teams_new_url #:action => "show", :id =>@user._id
	end

	# def save
	# 	@users = Users.
end