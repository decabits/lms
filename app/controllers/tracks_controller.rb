class TracksController < ApplicationController

  before_action :authenticate_user!

  def show
    # @track = Track.find(params[:id])
    @track = Track.includes(:track_items).find(params[:id])
    @assignment = Track.includes(:assignments).find(params[:id])
    # @assignment = @track.assignments.find(params[:id])
  end

end
