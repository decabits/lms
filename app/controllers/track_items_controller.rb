class TrackItemsController < ApplicationController

	before_action :authenticate_user!

	def index
		@items = TrackItem.all
	end

  def show
    @item = TrackItem.find(params[:id])

  end
	
	def new
		@item = TrackItem.new
	end

	def destroy
		@item = TrackItem.find(params[:id])
    @item.destroy
    flash[:notice] = "Topic was successfully deleted" 
    redirect_to tracks_path
	end

	def edit
		@item = TrackItem.find(params[:id])
  end

	def create
		@item = TrackItem.new(item_params)
    if @item.save
      flash[:notice] = "Topic was successfully created"
      redirect_to tracks_path
    else
      render "new"
    end
	end

	def update
    @item = TrackItem.find(params[:id])
    if @item.update(item_params)
      flash[:notice] = "Topic has been updated"
      redirect_to tracks_path(@track)
    else
      render "edit"
    end
  end

	private
  def item_params
    params.require(:track_item).permit(:topic, :item_type, :track_id)
  end

end
