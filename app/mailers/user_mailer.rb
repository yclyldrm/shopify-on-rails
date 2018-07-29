class UserMailer < ApplicationMailer
	def welcome
		@product = params[:product]
		mail(to: 'yucellyildirim@gmail.com',subject: 'Gift')		
	end
end
