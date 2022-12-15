class ColorPattern
  COLORS = ['red', 'blue', 'green', 'yellow']

  def self.random
    new(COLORS.sample(4).join(' '))
  end

  def initialize(colors_string)
    @colors = colors_string.split
  end

  def to_s
    @colors.join(' ')
  end
end
class GuessingGame
  def self.play
    # Choose a random color pattern
    @pattern = ColorPattern.random

    # Keep prompting the user for a guess until they guess the correct pattern
    # or enter an invalid guess, or run out of guesses
    puts "Guess the color pattern from red blue green yellow. The position and color need to be correct to end"
    while true
      # Repeat the guessing and feedback until the user has made 12 guesses
      # or has guessed the pattern correctly
      12.times do
        # Prompt the user to guess the pattern
        puts "Guess the color pattern:"
        guess = gets.chomp

        # Check if the guess is correct and print the result
        if guess == @pattern.to_s
          puts "Correct! The correct pattern was #{@pattern}"
          break
        elsif (guess.split - ['red', 'blue', 'green', 'yellow']).any?
          puts "Error: You must guess the pattern using the colors red, blue, green, and yellow"
          break
        else
          # Give feedback on the user's guess
          correct_colors = @pattern.to_s.split & guess.split
          puts "#{correct_colors.length} colors were correct"

          # Check if any colors were in the correct position
          correct_positions = 0
          @pattern.to_s.split.each_with_index do |color, index|
            correct_positions += 1 if color == guess.split[index]
          end
          puts "#{correct_positions} colors were in the correct position"
        end
      end

      # Print the correct pattern if the user ran out of guesses
      puts "Sorry, you ran out of guesses. The correct pattern was #{@pattern}"
      break
    end
  end
end






# Play the game
GuessingGame.play
    
