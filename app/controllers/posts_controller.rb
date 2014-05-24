class PostsController < ApplicationController
	before_action :authenticate_user!
  
	def index
		@posts = current_user.posts
  	end

  	def new
		@posts = Post.new
  	end

	def show
		@posts = Post.all
	end
  	def create
		@posts = Post.create( avatar_params )
		@score = params[:type]
		@posts.message = params[:post][:message]
		if @score = "Candy Crush"
			@posts.candy_crush = params[:post][:score]

		elsif @score = "Flappy Bird"
			@posts.flappy_bird = params[:post][:score]

		elsif @score = "Fruit Ninja"
			@posts.fruit_ninja = params[:post][:score]

		elsif @score = "2 Fuse"
			@posts.fuse = params[:post][:score]

		elsif @score = "Giant Boulder of Death"
			@posts.gbd = params[:post][:score]

		elsif @score = "Iron Pants"
			@posts.iron_pants = params[:post][:score]

		elsif @score = "Piano Tiles"
			@posts.piano_tiles = params[:post][:score]

		elsif @score = "Minion Rush"
			@posts.minion_rush = params[:post][:score]

		elsif @score = "Temple Run"
			@posts.temple_run = params[:post][:score]
		
		else @score = "2048"
			@posts.twenty = params[:post][:score]
		end
		@posts.save!
		redirect_to :posts => :index
  	end
	
	def avatar_params
  		params.require(:post).permit(:avatar)
	end
end
