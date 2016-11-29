class StaticPagesController < ApplicationController
  
  def home
    if !current_user.nil?
      redirect_to categories_path
    end
  end

  def help
  end

  def about
  end

  def contact
  end

  def categories
  end
  
end
