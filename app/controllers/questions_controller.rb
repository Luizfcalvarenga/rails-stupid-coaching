class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = answer_select(@question)
  end

  def answer_select(question)
    p question

    if question[-1] == '?'
      'Silly question, get dressed and go to work!'
    elsif question == 'I am going to work'
      'Great!'
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
