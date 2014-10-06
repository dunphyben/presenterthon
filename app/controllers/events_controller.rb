class EventsController < ApplicationController


def create
	@event = Event.new({name: params[:name]})
	current_host.events << @event
	render json: {success: true, name: @event.name, id: @event.id }
end

def show
	@event = Event.friendly.find(params[:id])
	respond_to do |format|
      format.html
      format.json { render :json => @event }
    end
end



# def event_params()
# 	binding.pry
# 	params.require(:event).permit(:name, :phone, :url1, :url2, :location_name, :street, :street_number, :city, :state, :zip, :country).tap do |while_listed| 
# 		while_listed[:data] = params[:event][:data]
#   end
# end
def event_params
    params.require(:event).permit(:name, :phone, :url1, :url2, :location_name, :street, :street_number, :city, :state, :zip, :country, :slug)
  end

end