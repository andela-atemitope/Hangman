# //require "coveralls"
# //Coveralls.wear!
require "simplecov"
require "fakefs/safe"
require "codeclimate-test-reporter"

SimpleCov.start do
 formatter SimpleCov::Formatter::MultiFormatter[
   SimpleCov::Formatter::HTMLFormatter,
   CodeClimate::TestReporter::Formatter
 ]
end

require "hangman"
