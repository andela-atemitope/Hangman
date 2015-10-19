# //require "coveralls"
# //Coveralls.wear!
require "simplecov"
require "fakefs/safe"
require "codeclimate-test-reporter"


CodeClimate::TestReporter.start

require "hangman"

class Hangman::Dictionary
  def generate_word
    generate_word = ["g", "e", "n", "e", "r", "a", "t", "e", "d"]
  end
end
