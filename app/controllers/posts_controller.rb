class PostsController < ApplicationController
	before_action :authenticate_user!, except: :index
	
	def index
		@posts = Post.order('post_date desc')
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.create(post_params)
		redirect_to root_path
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])
		@post.update_attributes(post_params)
		redirect_to root_path
	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy
		redirect_to root_path
	end

	private

	def post_params
		params.require(:post).permit(:title, :post_date, :message)
	end
end
