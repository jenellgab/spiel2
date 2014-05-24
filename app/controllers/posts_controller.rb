class PostsController < ApplicationController
	before_action :authenticate_user!
  
	def index
		@posts = current_user.posts
  	end

  	def new
		@posts = Post.new
  	end

  	def create
		@posts = Post.new
		@score = params[:type]
		@posts.message = params[:message]
		if @score = "Candy Crush"
			@posts.candy_crush = params[:score]

		elsif @score = "Flappy Bird"
			@posts.flappy_bird = params[:score]

		elsif @score = "Fruit Ninja"
			@posts.fruit_ninja = params[:score]

		elsif @score = "2 Fuse"
			@posts.fuse = params[:score]

		elsif @score = "Giant Boulder of Death"
			@posts.gbd = params[:score]

		elsif @score = "Iron Pants"
			@posts.iron_pants = params[:score]

		elsif @score = "Piano Tiles"
			@posts.piano_tiles = params[:score]

		elsif @score = "Minion Rush"
			@posts.minion_rush = params[:score]

		elsif @score = "Temple Run"
			@posts.temple_run = params[:score]
		
		else @score = "2048"
			@posts.twenty = params[:score]
		end
		@posts.save!
		redirect_to :action => :index
  	end

end
