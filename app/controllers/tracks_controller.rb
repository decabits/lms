class TracksController < ApplicationController
	def index
      @tracks = Track.all
	end
	def show
      @track = Track.find(params[:id])
      @items = @track.track_items
    end
end
