# //require "coveralls"
# //Coveralls.wear!
require "simplecov"
require "fakefs/safe"
require_relative "../lib/hangman/save_load.rb"
require_relative "../lib/hangman/game_display.rb"
require_relative "../lib/hangman/dictionary.rb"
require_relative "../lib/hangman.rb"
require_relative "../lib/hangman/win_lose.rb"
require "codeclimate-test-reporter"

SimpleCov.start do
 formatter SimpleCov::Formatter::MultiFormatter[
   SimpleCov::Formatter::HTMLFormatter,
   CodeClimate::TestReporter::Formatter
 ]
end