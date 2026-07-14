require_relative "config"

def show_header

  puts "=" * 30
  puts APP_TITLE
  puts "=" * 30
  puts

end

def show_question(question, number)

  puts "Question #{number}"
  puts question.text
  puts

  question.options.each_with_index do |option, index|

    puts "#{index + 1}. #{option}"

  end

end

def show_result(score, total)

  puts
  puts "-" * 30
  puts "Score: #{score} / #{total}"

  percent = score * 100 / total

  puts "Success Rate: #{percent}%"

end
