class HostsController < ApplicationController

	def index
		    
	end

	def show
		@host = current_host
		@events = current_host.events

	end

end