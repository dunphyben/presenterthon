class TracksController < ApplicationController


def create
	binding.pry
	@track = Track.new({name: params[:name]})
	current_host.events << @event
	render json: {success: true, name: @event.name, id: @event.id }
end

def show
	@event = Track.find(params[:id])
end


# def event_params()
# 	binding.pry
# 	params.require(:event).permit(:name, :phone, :url1, :url2, :location_name, :street, :street_number, :city, :state, :zip, :country).tap do |while_listed| 
# 		while_listed[:data] = params[:event][:data]
#   end
# end

end