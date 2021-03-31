class HomeroomsController < ApplicationController

  def index
    @comments = Comment.all
    @teachers = Teacher.all
  end

  def create
    @comment = Comment.new(text: params[:comment])
    if @comment.save
      ActionCable.server.broadcast 'comment_channel', content: @comment
    end
  end

  private

  def comment_params
    params.permit(:comment).merge(student_id: current_student.id)
  end

end