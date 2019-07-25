class TrackItemsController < ApplicationController
	before_action :authenticate_user!
	def index
		@items = TrackItem.all
	end
	
	def new
		@item = TrackItem.new
	end

	def edit
    @item = TrackItem.find(params[:id])
  end

	def create
		render plain: params[:track_item].inspect
		# @track = Track.find(params[:id])
		# @item = TrackItem.new(item_params)
		# @item.save
		# redirect_to track_items_path
    # if @item.save
    #   flash[:notice] = "Topic was successfully created"
    #   redirect_to track_path(track)
    # else
    #   render "new"
    # end
	end

	private
  def item_params
    params.require(:track_item).permit(:topic, :item_type, :track_id)
  end

end
