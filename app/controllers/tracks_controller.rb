
class TracksController < ApplicationController


def create
	track_params = params["track"]
	@track = Track.new({name: track_params[:name]})
	@event = Event.find(track_params[:event_id])
	@event.tracks << @track
	render json: {success: true, name: @track.name, id: @track.id }
end

def show
	track_id = params["id"]
	@track = Track.find(track_id)
end

def send_emails
	# track_id = params["id"]
	# @track = Track.find(track_id)
	Mailjet::MessageDelivery.create(from: "dunphy.ben@gmail.com", to: ["jwrobes@gmail.com", "j3pydev@gmail.com"], subject: "Mailjet Test", text: "This is a test")
end


# def event_params()
# 	binding.pry
# 	params.require(:event).permit(:name, :phone, :url1, :url2, :location_name, :street, :street_number, :city, :state, :zip, :country).tap do |while_listed| 
# 		while_listed[:data] = params[:event][:data]
#   end
# end

end