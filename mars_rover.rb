class Rover

  attr_accessor :position_x, :position_y, :current_direction

  # def initialize(position_x, position_y, current_direction)
  #   @position_x = 0
  #   @position_y = 0
  #   @current_direction = current_direction
  #   @plateau_size = []
  #   @start_position = []
  # end
    #Asking the user for their imput
  def give_me_instructions
    #Asking for the size of the plateau
    puts "What is the size of the plateau?"
    @plateau_size = gets.chomp.split(" ")
    @position_x = @plateau_size[0].to_i
    @position_y = @plateau_size[1].to_i
    #Asking for the start position of the rover
    puts "What coordinate position would you like to start in?"
    @start_position = gets.chomp.split(" ")
    @position_x = @start_position[0].to_i
    @position_y = @start_position[1].to_i
    @current_direction = @start_position[2]

    read_instructions
  end


    ##Says what will happen when the user gives imput (command) R, L, or M
    def read_instructions
      #Ask the user for new coordinates for where they want to go
      puts "Give the coordinates for how you want the rover to move: "
      @instructions = gets.chomp
      @instructions_array = @instructions.split(" ")
      # instructions_array = @instructions
      @instructions_array.each do |command|
        if command == "R" || command == "L"
          turn(command)
        elsif command == "M"
          puts "moveeeee"
          move
        else
        puts   "Error"
        end

      end

    end

  ##Decides which direction to turn in (L or R)
  ##Tells us the current direction that the rover is facing (N, S, E, W)
  def turn(turn_direction)

    if (turn_direction == "L" && @current_direction == "N") || (turn_direction == "R" && @current_direction == "S")
      @current_direction = "W"
      puts "#{@current_direction}"

    elsif (turn_direction = "L" && @current_direction == "E") || (turn_direction == "R" && @current_direction == "W")
      @current_direction = "N"

    elsif (turn_direction = "L" && @current_direction == "S") || (turn_direction == "R" && @current_direction == "N")
      @current_direction = "E"

    else (turn_direction = "L" && @current_direction == "W") || (turn_direction == "R" && @current_direction == "E")
      @current_direction = "S"
    end
  end

  ##Tells us to move on the x and y coordinates
  def move
  ##incrementing or decrementing eg. current_direction W,
  ##position_x decrementing by 1 (-=1)
    if @current_direction == "N"
      @position_y += 1
      puts "#{@position_y}"
    elsif @current_direction == "E"
      @position_x += 1
    elsif @current_direction == "W"
      @position_x -= 1
    elsif @current_direction == "S"
      @position_y -= 1
    end

  end

 def check
   puts "New rover position: #{@position_x}, #{@position_y}, facing #{@current_direction}."
 end
end


rover1 = Rover.new

rover1.give_me_instructions
rover1.check
