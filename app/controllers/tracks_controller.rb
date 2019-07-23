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

  def edit
    @track = Track.find(params[:id])
  end

  def create 
    @track = Track.new(track_params)
    if @track.save
      flash[:notice] = "Track was successfully created"
      redirect_to tracks_path(@track)
    else
      render "new"
    end
  end

  def update
    @track = Track.find(params[:id])
    if @track.update(track_params)
      flash[:notice]
      redirect_to tracks_path(@track)
    else
      render "edit"
    end
  end

  private
  def track_params
    params.require(:track).permit(:name, :description)
  end

end
