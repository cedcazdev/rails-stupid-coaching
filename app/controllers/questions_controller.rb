class QuestionsController < ApplicationController
  def ask; end

  def answer
    # TODO: return coach answer to your_message
    if params[:questions].downcase == 'i am going to work'
      params[:answer] = 'Great!'
    elsif params[:questions].end_with?('?')
      params[:answer] = 'Silly question, get dressed and go to work!'
    else
      params[:answer] = "I don't care, get dressed and go to work!"
    end
  end
end
