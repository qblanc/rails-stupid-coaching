class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = logic(@question)
  end
end

def logic(question)
  if question == 'I am going to work'
    'Great!'
  elsif question.strip.chars.last == '?'
    'Silly question, get dressed and go to work!'
  else
    "I don't care, get dressed and go to work!"
  end
end
