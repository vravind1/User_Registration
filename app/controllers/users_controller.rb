class UsersController < ApplicationController
	def home
		@profile = Profile.new
  	end

	def create
		@profile = Profile.new(user_profile)

		#@profile = Profile.new(fname[:fname])
		

		if @profile.save!
		#	redirect_to @user
			render 'new'		
		else
			render 'new'
			flash[:notice] = "Didn't Work"	
		end
	end

private
	def user_profile
	params.require(:user).permit(:fname,:lname,:dob,:email,:pwd)
	end
end
