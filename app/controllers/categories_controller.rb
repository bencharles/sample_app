class CategoriesController < ApplicationController
  def aerospace
  	@ques = Question.find_by(category: "aerospace")
  end
end
