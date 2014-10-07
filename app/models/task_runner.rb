class Task_Runner

	def self.send_email(emails)
		file = Nokogiri::HTML(open('app/views/send_emails/presentation_email.html.erb'))
		# binding.pry
		Mailjet::MessageDelivery.create(from:"dunphy.ben@gmail.com",to: emails, subject:"Upload Your presentation for #{}", html: file )
	end	


	def self.parse_emails(email_params)
		binding.pry
		email_array = email_params.select { |k,v| k =~ /email/ }.values
		email_array.select {|email| email.length > 0 }
	end
	
end