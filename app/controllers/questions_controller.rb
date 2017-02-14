class QuestionsController < ApplicationController
  def new
  end

  def create
    @question = Question.new(content: question_params[:content], user_id: current_user.id)
    if @question.save
      redirect_to '/'
      flash[:notice] = "Question submitted!"
    else
      redirect_to new_question_path
      flash[:alert] = "There was a problem with your submission."
    end
  end

private
  def question_params
    params.require(:question).permit(:content)
  end
end
