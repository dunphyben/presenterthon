Host -> Track
	

How do we authenticate the Presenter to upload to a track? 
	Like craigslist. Send user an email with a unique code. When they click on the link, they can go to the path to edit their Track.presenetation

2 options:
	1. Invite specific people via email, text message
	2. Invite people to an upload page by announcing a link at the event itself
		a. Link closes to uploading after time specified by the host

	Both options send the presenter to a form page for a prompt to create an account where they add:
		Team/Company name
		Email
		Phone number (for text message)
		Presentation Title
		File uploads


	As a host, I am able to invite specific presenters to a track by email address. CALL THIS TRACK-SPECIFIC
		As a presenter invited directly by a host, I am able to click on the link in my email invite and go to the Presentathon site
			As a presenter WITHOUT a profile, I am prompted to create a profile. Once profile created, taken to Event.track.presentation edit page.
			As a presenter WITH an existing profile, I am taken to the Event.track.presentation edit page. 
	As a presenter, I am able to view on my presenter/show page all the tracks that I have been invited to. 

	As a host, I am able to create an Event.track link for anyone with the link to upload a presentation. CALL THIS TRACK-GENERIC (same thing as track-specific just not specifying emails). 


	if host_logged_in, Event.track-SPECIFIC page shows:
		Presenter_name | Presentation_name | Uploaded? 
		&&
		"#{number_of_uploads}/#{number_of_invites}
		&& 
		Event.track.time_remaining_until_close

	if host_logged_in, Event.track-GENERIC page shows:
		Presenter_name | Presentation_name | Uploaded? 
		&&
		"#{number_of_uploads}"
		&& 
		Event.track.time_remaining_until_close







