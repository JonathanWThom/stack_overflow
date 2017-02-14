class ResponsesController < ApplicationController
  def new
  end

  def create
    @question = Question.find(params[:question_id])
    @response = Response.new(:content => response_params[:content], :user_id => current_user.id, :question_id => params[:question_id])
    if @response.save
      redirect_to question_path(@question)
    else
      redirect_to question_path(@question)
      flash[:alert] = "There was a problem with your response."
    end
  end
private
  def response_params
    params.require(:response).permit(:content)
  end
end
