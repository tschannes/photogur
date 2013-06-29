class UsersController < ApplicationController

	def index
		@users = User.all.sort_by_email
	end

	def new
		@user = User.new
	end

	def create
		params.permit!
		@user = User.new(params[:user])
		if @user.save
			flash[:success] = "Welcome to the Sample App!"
			redirect_to @user
		else
			render 'new'
		end
	end

	def show
		@user = User.find(params[:id])
	end

end
