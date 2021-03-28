class HomeroomsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def create
    Comment.create(comment_params)
  end

  private

  def comment_params
    params.permit(:comment).merge(student_id: current_student.id)
  end

end