class GamesController < ApplicationController
  def new
    @letters = ('a'..'z').to_a.sample(10).join.upcase.split
    return @letters
  end

  def score
  end

  def dictionary_verif
    url = "https://wagon-dictionary.herokuapp.com/#{@answer}"
    word_dictionary = open(url).read
    word = JSON.parse(word_dictionary)
    return word['found']
  end

end
