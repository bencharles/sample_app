class CategoriesController < ApplicationController
  def aerospace
  	@question = Question.find_by(category: "aerospace")
  end

  def biomedical
  	@question = Question.find_by(category: "biomedical")
  end

  def chemical
  	@question = Question.find_by(category: "chemical")
  end

  def civil
  	@question = Question.find_by(category: "civil")
  end

  def compeng
  	@question = Question.find_by(category: "compeng")
  end

  def compsci
  	@question = Question.find_by(category: "compsci")
  end

  def electrical
  	@question = Question.find_by(category: "electrical")
  end

  def engsci
  	@question = Question.find_by(category: "engsci")
  end

  def mechanical
  	@question = Question.find_by(category: "mechanical")
  end

  def systems
  	@question = Question.find_by(category: "electrical")
  end

end
