class PostsController < ApplicationController
	before_filter :signed_in_user

	def index

	end

	def create
		params.permit!
		@post = current_user.posts.build(params[:post])
		if @post.save
			flash[:success] = "post created!"
			redirect_to root_path
		else
			redirect_to root_path
		end
	end

	def destroy
	end

end