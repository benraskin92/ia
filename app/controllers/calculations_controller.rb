class CalculationsController < ApplicationController
	def calculate_return
		@return_number = params[:return_number]
		#@percent_return = @return_number.to_i + @current_user.posts[:initial_investment].to_i
	end
end
