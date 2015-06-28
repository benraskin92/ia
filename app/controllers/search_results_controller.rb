class SearchResultsController < ApplicationController


	def search
		@search = params[:search].to_s
		@results = []
		@post = current_user.posts.all
		# @post.each do |post|
		# 	if @post.name.downcase.include?(@search)
		# 		@results.push(@post.name)
		# 	end
		# end
	end
end
