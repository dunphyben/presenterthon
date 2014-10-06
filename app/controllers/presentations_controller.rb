class PresentationsController < ApplicationController

	def index

	end

	def create
		presentation_params = params["presentation"]
		@presentation = Presentation.new({name: presentation_params[:name]})
		@track = Track.find(presentation_params[:track_id])
		@track.presentations << @presentation
		# binding.pry
		render json: {success: true, name: @presentation.name, id: @presentation.id }

	end

	def update
		@presentation = Presentation.find(params[:id])
		if params[:presentation]
			@presentation.file = params[:presentation][:file]
			@presentation.save
			flash.now[:alert] = "File was uploaded"
			render "show"
		else
			flash.now[:alert] = "No File was selected to upload"
			render "show"
		end
		
	end

	def show
		@presentation = Presentation.friendly.find(params[:id])
	end

	def send_email
		# binding.pry
	end

end