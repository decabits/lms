class TracksController < ApplicationController

  before_action :authenticate_user!

  def index
    @track = Track.all
  end

  def show
    @track = Track.find(params[:id])
  end

  def new
    @track = Track.new
  end

  def create 
    # render plain: params[:track].inspect
    @track = Track.new(track_params)
    @track.save
    redirect_to tracks_path(@track)
  end

  private
  def track_params
    params.require(:track).permit(:name, :description)
  end

end
