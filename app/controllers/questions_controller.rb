class QuestionsController < ApplicationController

  
  def index
    redirect_to "categories/aerospace"
  end
  
  def create
    params[:question][:category] = "aerospace"
    params[:question][:user_id] = current_user[:id]
    @question = Question.new(params.require(:question).permit(:content, :category, :user_id))
    if @question.save
      render 'categories/aerospace'
    end
  end
end
