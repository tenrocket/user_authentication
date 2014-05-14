class User < ActiveRecord::Base

	has_secure_password

	validates_presence_of :password
	validates_presence_of :email
	validates_uniqueness_of :email
	validates_confirmation_of :password

	# after_create :send_notification_emails

	def send_new_user_message_to_all
		UserMailer.new_user_message_to_all(User.all, self)
	end

end
