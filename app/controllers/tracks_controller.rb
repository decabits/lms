class TracksController < ApplicationController

  before_action :authenticate_user!

  def show
    # @track = Track.find(params[:id])
    @track = Track.includes(:track_items).find(params[:id])
  end

end
