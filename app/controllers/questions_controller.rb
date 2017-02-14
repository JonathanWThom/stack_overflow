class QuestionsController < ApplicationController
  def new
    if current_user == nil
      redirect_to '/'
    end
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

  def show
    @question = Question.find(params[:id])
    if params[:vote] == '1'
      @question.liked_by current_user
      redirect_to question_path(@question)

    end
    if params[:vote] == '-1'
      @question.disliked_by current_user
      redirect_to question_path(@question)
    end
  end

private
  def question_params
    params.require(:question).permit(:content)
  end
end
