class UserMailer < ActionMailer::Base
	default from: "empower.chris@yahoo.com"

	def self.new_group_message(group)
		group.each do |user|
			UserMailer.new_user_message(user).deliver
		end
	end

	def new_user_message(user)
		@user = user

		mail(to: user.email, subject: "Welcome To My Awesome New App!")
	end
end