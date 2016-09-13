class PhrasesController < ApplicationController

  def index
    @phrases = Phrase.all
    session[:current_phrase] = nil
  end

  def random_fact
    @phrase = Phrase.where.not(id: session[:current_phrase]).sample

    if session[:current_phrase].blank?
       session[:current_phrase] = [@phrase.id]
    else
      session[:current_phrase] << @phrase.try(:id)
    end
  end
end


