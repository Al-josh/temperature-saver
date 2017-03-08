require 'paint'
require_relative 'increment.rb'
require 'terminal-table'

class Questioner
  def initialize(questions)
    @questions = questions
  end

  attr_accessor :questions


def ask(progress_bar)
  answers = []
  farens = []

    @questions.each do |question|
      system("clear")
      puts "#{progress_bar.title}: #{progress_bar.current_step}"
      puts question
      answer = gets.chomp.to_i
      faren = (answer*9) /5+32

      if answer > 30
        answer = Paint[answer, :red]
      else
        answer = Paint[answer, :blue]
      end

      if faren > 86
        faren = Paint[faren, :red]
      else
        faren = Paint[faren, :blue]
      end

      answers << answer
      farens << faren
      puts answers.inspect
      progress_bar.current_step = progress_bar.current_step + 1


    end
    puts "Thanks for answering my questions. You answered:"

    #  puts "Celsius #{answer}"
    #  puts "Fahrenheit #{answer * 9/5+32}"



      rows = []
      rows << ['Monday', answers[0], farens[0]] #answers[0] * 9/5+32 ]
      rows << ['Tuesday', answers[1], farens[1]] #answers[1] * 9/5+32]
      rows << ['Wednesday', answers[2], farens[2]] #answers[2] * 9/5+32]
      rows << ['Thursday', answers[3], farens[3]] #answers[3] * 9/5+32]
      rows << ['Friday', answers[4], farens[4]] #answers[4] * 9/5+32]
      rows << ['Saturday', answers[5], farens[5]] #answers[5] * 9/5+32]
      rows << ['Sunday', answers[6], farens[6]] #answers[6] * 9/5+32]
      table = Terminal::Table.new :rows => rows
      table = Terminal::Table.new :headings => ['Day', 'Celsius', 'Fahrenheit'], :rows => rows




puts table

    end
  end


question_list = [
  "What is the temperature on Monday?",
  "What is the temperature on Tuesday?",
  "What is the temperature on Wednesday?",
  "What is the temperature on Thursday?",
  "What is the temperature on Friday?",
  "What is the temperature on Saturday?",
  "What is the temperature on Sunday?",
]

my_questioner = Questioner.new(question_list)
progress_bar = ProgressBar.new("Question Progress")

my_questioner.ask(progress_bar)
