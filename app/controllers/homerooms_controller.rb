class HomeroomsController < ApplicationController

  def index
    @comments = Comment.all
    @teachers = Teacher.all
  end

  def create
    comment = Comment.create(comment_params)
    if comment.save
      redirect_to homerooms_path(@comment.homeroom)
    else
      redirect_to root_path
    end
  end

  def search
    @teachers = Teacher.where('subject1_id LIKE(?)', "%#{params[:keyword]}%").limit(20)
  end

  private

  def comment_params
    params.permit(:comment).merge(student_id: current_student.id)
  end

end