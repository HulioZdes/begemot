require_relative "quiz"
require_relative "score"
require_relative "renderer"
require_relative "sample_questions"

quiz = Quiz.new

QUESTIONS.each do |question|

  quiz.add(question)

end

score = Score.new

show_header

quiz.questions.each_with_index do |question, index|

  show_question(question, index + 1)

  answer = question.answer

  puts
  puts "Selected: #{answer}"

  if answer == question.answer

    puts "Correct!"

    score.add

  else

    puts "Wrong!"

  end

  puts

end

show_result(
  score.value,
  quiz.questions.size
)
