require "byebug"

class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq, :score

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
    @score = 0

  end

  def play

    until game_over
      take_turn
    end

    if game_over
      game_over_message
      puts "Your score is #{self.score}"
      reset_game
    end

  end

  def take_turn
    show_sequence
    require_sequence
    unless game_over == true
      round_success_message
      sleep 2
      system "clear"
      # debugger
      self.sequence_length += 1  # why doesn't sequence_length += 1 work?
      self.score += 1
      sleep 2
    end
  end

  def show_sequence

    add_random_color
    seq.each do |color|
      puts color
      sleep 2
      system "clear"
    end

  end

  def require_sequence
    input = gets.chomp.split(" ")
    # debugger
    if input != seq
      self.game_over = true
    end
  end

  def add_random_color
    seq << COLORS.sample

  end

  def round_success_message
    puts "Round success"
  end

  def game_over_message

    puts "Game"
    puts "OVERRRRRR"

  end

  def reset_game

    self.sequence_length = 1
    self.seq = []
    self.game_over = false

  end
end

game = Simon.new

game.play