class QuestionsController < ApplicationController
  ANSWERS = ["Great!","Silly question, get dressed and go to work!","I dont care, get dressed and go to work!"]

  def ask

  end

  def answer
    @question = params[:question]
    if @question == "I am going to work"
      @answer = ANSWERS[0]
    elsif @question[-1] == "?"
      @answer = ANSWERS[1]
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
