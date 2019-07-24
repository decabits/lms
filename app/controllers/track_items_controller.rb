class TrackItemsController < ApplicationController
	before_action :authenticate_user!
	def index
		@items = TrackItem.all
	end
	
	def new
		@item = TrackItem.new
	end

	def edit
    @item = TrackItem.find(params[:track_id])
  end

	def create
		# render plain: params[:track_item].inspect
		@item = TrackItem.new(item_params)
		@item.save
		redirect_to track_path(@track)
    # if @item.save
    #   flash[:notice] = "Topic was successfully created"
    #   redirect_to track_path(track)
    # else
    #   render "new"
    # end
	end

	private
  def item_params
    params.require(:track_item).permit(:topic, :item_type)
  end

end
