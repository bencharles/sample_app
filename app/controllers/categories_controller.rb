class CategoriesController < ApplicationController
  before_action :logged_in_user
  
  def aerospace
    @answer = Answer.new
    @question = Question.new
    @questions = Question.where(category: "aerospace")
  end

  def biomedical
    @answer = Answer.new
    @question = Question.new
    @questions = Question.where(category: "biomedical")
  end

  def chemical
    @answer = Answer.new
  	@question = Question.new
    @questions = Question.where(category: "chemical")
  end

  def civil
    @answer = Answer.new
  	@question = Question.new
    @questions = Question.where(category: "civil")
  end

  def compeng
    @answer = Answer.new
    @question = Question.new
    @questions = Question.where(category: "compeng")
  end

  def compsci
    @answer = Answer.new
  	@question = Question.new
    @questions = Question.where(category: "compsci")
  end

  def electrical
    @answer = Answer.new
  	@question = Question.new
    @questions = Question.where(category: "electrical")
  end

  def engsci
    @answer = Answer.new
    @question = Question.new
    @questions = Question.where(category: "engsci")
  end

  def mechanical
    @answer = Answer.new
  	@question = Question.new
    @questions = Question.where(category: "mechanical")
  end

  def systems
    @answer = Answer.new
  	@question = Question.new
    @questions = Question.where(category: "systems")
  end

  def sts
    @answer = Answer.new
    @question = Question.new
    @questions = Question.where(category: "sts")
  end

  def esc
    @answer = Answer.new
    @question = Question.new
    @questions = Question.where(category: "esc")
  end

  def thetatau
    @answer = Answer.new
    @question = Question.new
    @questions = Question.where(category: "thetatau")
  end

  def ulink
    @answer = Answer.new
    @question = Question.new
    @questions = Question.where(category: "ulink")
  end
  
  def create
    @question = Question.new
    @question[:content] = params[:question][:content]
    @question[:category] = params[:category]
    @question[:user_id] = current_user[:id]
    if @question.save
      redirect_to :controller => 'categories', :action => params[:category]
    end
  end
  
  private
  
    def logged_in_user
      unless logged_in?
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end
end
