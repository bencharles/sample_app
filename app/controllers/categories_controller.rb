class CategoriesController < ApplicationController
  before_action :logged_in_user
  
  def aerospace
    @question = Question.new
    @questions = Question.where(category: "aerospace")
  end

  def biomedical
    @question = Question.new
    @questions = Question.where(category: "biomedical")
  end

  def chemical
  	@question = Question.new
    @questions = Question.where(category: "chemical")
  end

  def civil
  	@question = Question.new
    @questions = Question.where(category: "civil")
  end

  def compeng
    @question = Question.new
    @questions = Question.where(category: "compeng")
  end

  def compsci
  	@question = Question.new
    @questions = Question.where(category: "compsci")
  end

  def electrical
  	@question = Question.new
    @questions = Question.where(category: "electrical")
  end

  def engsci
    @question = Question.new
    @questions = Question.where(category: "engsci")
  end

  def mechanical
  	@question = Question.new
    @questions = Question.where(category: "mechanical")
  end

  def systems
  	@question = Question.new
    @questions = Question.where(category: "systems")
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
