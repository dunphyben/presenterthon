class PresentationsController < ApplicationController

	def index

	end

	def create
		presentation_params = params["presentation"]
		@presentation = Presentation.new({name: presentation_params[:name]})
		@track = Track.find(presentation_params[:track_id])
		@track.presentations << @presentation
		binding.pry
		render json: {success: true, name: @presentation.name, id: @presentation.id }

	end

	def show
		@presentation = Presentation.find(params[:id])
	end

end