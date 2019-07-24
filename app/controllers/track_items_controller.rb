class TrackItemsController < ApplicationController
	before_action :authenticate_user!
	def index
		@items = TrackItem.all
    end
end
