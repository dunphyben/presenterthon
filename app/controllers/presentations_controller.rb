class PresentationsController < ApplicationController

	def index

	end

	def create
		presentations_params = params["presentation"]
		@presentation = Presentation.new({name: presentations_params[:name]})
		@track = Track.find(track_params[:track_id])
		@track.presentation << @track
		render json: {success: true, name: @presentation.name, id: @presentation.id }

	end

	def show
		binding.pry
		@presentation = Presentation.find(params[:id])
	end

end