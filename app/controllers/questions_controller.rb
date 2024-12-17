class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question] # Read the question from the form input
    @answer = compute_coach_answer(@question) # Call a helper method for the coach's logic
  end

  private

  def compute_coach_answer(question)
    if question == "I am going to work"
      "Great!"
    elsif question&.end_with?("?")
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
