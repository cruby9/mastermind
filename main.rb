

# Define a class to represent a pattern of colors
class ColorChooser
  attr_reader :user_choices
  COLORS = ["red", "yellow", "blue", "white"]

  def initialize
    @user_choices = []
  end

  def choose_colors
    puts "Please choose up to four colors from the following: #{COLORS.join(", ")}"
    puts "Enter 'done' when you are finished making your choices."

    loop do
      break if @user_choices.size == 4
      print "Enter your choice: "
      choice = gets.chomp
      break if choice == "done"
      if COLORS.include?(choice)
        @user_choices << choice
      else
        puts "Invalid color. Please try again."
      end
    end
  end

  def user_choices
    @user_choices
  end
end

# Example usage
#chooser = ColorChooser.new
#chooser.choose_colors
#puts "Your choices: #{chooser.user_choices.join(", ")}"

class ColorCompare
  attr_reader :colors1, :colors2
  def initialize(colors1, colors2)
    @colors1 = colors1
    @colors2 = colors2
  end

  def compare
    identical_positions = []

    # Compare the elements at each position in the arrays and
    # add the index to the identical_positions array if they are the same
    @colors1.each_with_index do |color, index|
      identical_positions << index if color == @colors2[index]
    end

    identical_positions
  end
end

class Board
  def initialize
    # Initialize the board
    @board = [" ", " ", " ", " "]
  end

  def print_board
    divider = '--+---+--'
    puts "\n#{@board[0]} | #{@board[1]} }"
    puts divider
    puts "#{@board[2]} | #{@board[3]}\n\n"
  end
end

#game = Play.new
#game.print_board
    
