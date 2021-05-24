class QuestionsController < ApplicationController
  def ask

  end

  def answer
    @answer = params[:answer]
    display_coach
  end

  def display_coach
    if @answer == "I am going to work"
      @display = "Great!"
    elsif @answer.include? "?"
      @display = "Silly question, get dressed and go to work!"
    else
      @display = "I don't care, get dressed and go to work!"
    end
    return @display
  end
end
