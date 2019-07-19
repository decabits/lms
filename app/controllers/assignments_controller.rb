class AssignmentsController < ApplicationController
    
  def show
    @track = Track.includes(:track_items).find(params[:id])
    @track_item = @track.track_items.includes(:assignments).find(params[:track_item_id])
    @assignment = @track.assignments.find(params[:id])
  endx¢

end
