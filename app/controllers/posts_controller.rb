class PostsController < ApplicationController
	before_action :require_user
	attr_accessor :return_number

	def new
		@post = current_user.posts.new
	end

	def show
		@post = current_user.posts.find(params[:id])
		#debugger
	end

	def index
		@return_number = params[:return_number]
		@post = current_user.posts.all
	end

	def create 
		@post = current_user.posts.new(post_params)
		if @post.save
			redirect_to root_path
			flash[:notice] = 'Asset added'
		else
			render 'new'
		end
	end

	def total_amount_invested
		invested = current_user.posts.sum(:initial_investment)
		puts invested
	end

	def calculate_return
		@return_number = params[:return_number]
		#puts @return_number
	end

	def post_params
		params.require(:post).permit(:name, :description, :category, :initial_investment)
	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy
		  	respond_to do |format|
     		format.html { redirect_to posts_url }
    		 format.json { head :no_content }
 		end
	end
end
