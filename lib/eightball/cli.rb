require 'thor'

module Eightball
  class Cli < Thor
    desc 'ask QUESTION', 'This will answer your question'
    long_desc <<-ASK_QUESTION

    ASK_QUESTION

    def ask(question)
      Eightball::Base.new.ask(question)
    end
  end
end
