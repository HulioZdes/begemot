class Quiz

  attr_reader :questions

  def initialize

    @questions = []

  end

  def add(question)

    @questions << question

  end

end
