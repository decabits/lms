class AssignmentsController < ApplicationController\

  def show
    @item = TrackItem.find(params[:id])
  end

end