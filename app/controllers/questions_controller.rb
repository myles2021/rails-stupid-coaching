class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @user_question = params[:user_question]
    if @user_question == 'I am going to work'
      @answer = "Great!"
    elsif @user_question.ends_with?('?')
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
