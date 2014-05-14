class UsersController < ApplicationController
# skip_filter :ensure_logged_in
	
	def index
		@users = User.all
	end
	
	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to "/", notice: "Thanks for signing up!"
		else
			render :new, notice: "Rats.  Your registration failed.  Try again."
		end
	end

	private

	def user_params
		params.require(:user).permit!
	end
end