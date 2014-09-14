class Task_Runner

	def self.send_email(emails)
		file = Nokogiri::HTML(open('app/views/send_emails/presentation_email.html.erb'))
		Mailjet::MessageDelivery.create(from:"dunphy.ben@gmail.com",to: emails, subject:"testing Api", html: file )
	end	

	
end