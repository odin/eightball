module Eightball
  class Base
    attr_accessor :answer
    attr_accessor :question

    def ask(question)
      @question = question
      @answer   = Eightball::Answers.new.content.sample

      puts self.display

      return self
    end

    def display
      "\nQuestion: #{self.question}\n\nAnswer: #{self.answer}"
    end
  end
end
