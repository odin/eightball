module Eightball
  class Base
    attr_accessor :answer
    attr_accessor :question

    def ask(question)
      @question = question
      @answer   = Eightball::Answers.content.sample

      puts display

      self
    end

    def display
      "\nQuestion: #{question}\n\nAnswer: #{answer}"
    end
  end
end
