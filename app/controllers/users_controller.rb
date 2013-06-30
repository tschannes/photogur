class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create
		params.permit!
		@user = User.new(params[:user])
		if @user.save
			flash[:success] = "Welcome to the photogur!"
			redirect_to @user
		else
			render 'new'
		end
	end

	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
	end

end
