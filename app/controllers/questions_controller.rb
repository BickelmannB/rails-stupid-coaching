class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @ask = params[:question]
    @answer = 'Great!' if @ask == 'I am going to work'
    @answer = 'Silly question,get dressed and go to work' if @ask.end_with?('?')
    @answer = "I don't care, get dressed and go to work"
  end
end
