class SessionsController < ApplicationController
	# skip_filter :ensure_logged_in, only: [:new, :create, :destroy]

	def new
		@user = User.new
	end

	def create
		user = User.find_by_email(params[:email]).try(:authenticate, params[:password])
		if user
			session[:user_id] = user.id
			redirect_to "/", notice: "Awesome.  You are now logged in."
		else
			flash.now.alert = "Rats.  You provided an invalid email or password."
			render :new
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to login_path, notice: "You are now logged out."
	end
end