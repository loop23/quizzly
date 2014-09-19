class FrontEndController < ApplicationController
  def question
    @quiz = Quiz.order('random()').first
  end

  def answer
  end
end
