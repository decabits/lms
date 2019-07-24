class TrackItemsController < ApplicationController
	def index
		@items = TrackItem.all
    end
end
