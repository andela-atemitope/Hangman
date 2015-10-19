# //require "coveralls"
# //Coveralls.wear!
require "simplecov"
SimpleCov.start
# require "simplecov-shield"
require "fakefs/safe"
require 'hangman'
# require_relative "../lib/hangman/save_load.rb"
# require_relative "../lib/hangman/game_display.rb"
# require_relative "../lib/hangman/dictionary.rb"
# require_relative "../lib/hangman.rb"
# require_relative "../lib/hangman/win_lose.rb"

module Hangman
  class Dictionary
    def generate_word
      generate_word = ["g", "e", "n", "e", "r", "a", "t", "e", "d"]
    end
  end
end
# SimpleCov.formatter = SimpleCov::Formatter::ShieldFormatter