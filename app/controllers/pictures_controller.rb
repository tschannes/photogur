class PicturesController < ApplicationController
	
	
	def index
	    @pictures = Picture.all.shuffle
	    @post = current_user.posts.build if signed_in?
	end
	  
	def new
	  @picture = Picture.new
	end

	def create
	  # Make the variable @picture a new picture with the given params
	  params.permit!
	  @picture = Picture.new(params[:picture])
	  # if @picture[:url].blank? || @picture[:artist].blank? || @picture[:title].blank?
	  # 	render :new
	  if @picture.save  
	    # if the save for the picture was successful, go to index.html.erb
	    redirect_to pictures_url
	  else
	    # otherwise render the view associated with the action :new (i.e. new.html.erb)
	    render :new
	  end
	end

	def show
	    @picture = Picture.find(params[:id])
	end

	def edit
	  @picture = Picture.find(params[:id])
	end

	def update
	  @picture = Picture.find(params[:id])
	  params.permit!
	  if @picture.update_attributes(params[:picture])
	    redirect_to "/pictures/#{@picture.id}"
	  else
	    render :edit
	  end
	end

	def destroy
	  @picture = Picture.find(params[:id])
	  @picture.destroy
	  redirect_to pictures_url
	end

	# def home 
	# 	@post = current_user.posts.build if signed_in?
	# end

end