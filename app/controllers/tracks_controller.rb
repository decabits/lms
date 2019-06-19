class TracksController < ApplicationController
  def show
    @track = Track.find(params[:id])
    @track = Track.includes(:track_items).find(params[:id])
  end

end
