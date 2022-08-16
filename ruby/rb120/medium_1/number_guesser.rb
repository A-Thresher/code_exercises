=begin

Problem:
  Make a game using OOP where a user is given 7 chances to guess a number from
  from the range of 1 - 100

Nouns:
  game, user, range, number
Verbs:
  Guess,

Breakdown:
  Game
  User
    - guess
  Number


Spike:
  class User
    def initialize
      set chances to 7
      set guesses to empty array
    end

    def guess
      subtract 1 from chances
      request input from user
      check input validity
      add input to guesses array
    end
  end

  class NumberGuesser
    def play
      set correct number to random number in range
      set player to new User object
      loop
        display current guess message
        get player's guess
        check input against correct answer
          if matches display winning message and break
          if not display incorrect message
        check number of guesses, display losing message and break if 0
      end
    end
  end

=end

class User
  attr_reader :guesses

  def initialize
    @guesses = []
  end

  def guess(range)
    guess = nil

    loop do
      print guess_request(range)
      guess = gets.chomp
      break if guess.to_i.to_s == guess &&
               range.cover?(guess.to_i)
      print "Invalid guess. "
    end

    guesses << guess.to_i
    guesses.last
  end

  private

  attr_writer :guesses

  def guess_request(range)
    "Enter a number between #{range.first} " +
    "and #{range.last}: "
  end
end

class GuessingGame
  include Math

  def initialize(low, high)
    @range = low..high
  end

  def play
    initialize_game
    loop do
      display_current_guess
      remove_chance
      player.guess(range)
      if correct_guess?
        display_win_message
        break
      else
        display_incorrect_message
        unless more_chances?
          display_no_more_guesses
          break
        end
      end
    end
  end

  private

  attr_reader :number, :player, :range
  attr_accessor :chances

  def initialize_game
    @number = rand(range)
    @player = User.new
    @chances = Math.log2(@range.size).to_i + 1
  end

  def display_current_guess
    puts "You have #{chances} guesses remaining."
  end

  def display_win_message
    puts "That's the number!"
    puts
    puts "You won!"
    puts
  end

  def display_incorrect_message
    if too_high?
      puts "Your guess is too high."
    else
      puts "Your guess is too low."
    end
    puts
  end

  def display_no_more_guesses
    puts "You have no more guesses. You lost!"
    puts
  end

  def remove_chance
    self.chances -= 1
  end

  def correct_guess?
    number == player.guesses.last
  end

  def too_high?
    number < player.guesses.last
  end

  def more_chances?
    chances > 0
  end
end

game = GuessingGame.new(501, 1500)
game.play
game.play
