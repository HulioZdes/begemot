class Question

  attr_reader :text
  attr_reader :options
  attr_reader :answer

  def initialize(text, options, answer)

    @text = text
    @options = options
    @answer = answer

  end

end
