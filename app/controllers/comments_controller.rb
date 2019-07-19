class CommentsController < ApplicationController
  
  def create
    @assignment = Assignment.find(params[:track_item_id])
    @comment = @assignment.comments.create(params[:comment]).permit(:name, :comment)
    redirect_to assignment_path(@assignment) 
  end

  def destroy
  end

end
