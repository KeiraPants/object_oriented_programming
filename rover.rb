class Rover

  attr_accessor :position_x, :position_y, :current_direction

  def initialize(position_x, position_y, current_direction)
    @position_x = 0
    @position_y = 0
    @current_direction = current_direction
  end
    ##Says what will happen when the user gives imput (command) R, L, or M
    def read_instructions(instructions)
      instructions.each do |command|
        if command == "R" || command == "L"
          turn(command)
        elsif command == "M"
          move
        end

      end

    end

  ##Decides which direction to turn in (L or R)
  ##Tells us the current direction that the rover is facing (N, S, E, W)
  def turn(turn_direction)

    if (@current_direction == "N" && input == "L") || (@current_direction == "S" && input == "R")
      @current_direction = "W"

    elsif (@current_direction = "E" && input == "L") || (@current_direction == "W" && input == "R")
      @current_direction = "N"

    elsif (@current_direction = "S" && input == "L") || (@current_direction == "N" && input == "R")
      @current_direction = "E"

    else (@current_direction = "W" && input == "L") || (@current_direction == "E" && input == "R")
      @current_direction = "S"

  end

  ##Tells us to move on the x and y coordinates
  def move
  ##incrementing or decrementing eg. current_direction W,
  ##position_x decrementing by 1 (-=1)
    if @current_direction == "N"
      @position_y += 1
    elsif @current_direction == "E"
      @position_x += 1
    elsif @current_direction == "W"
      @position_x -= 1
    elsif @current_direction == "S"
      @position_y -= 1

  end


  def status
    return "The rover is currently at #{@position_x}, #{@position_y}, facing #{@current_direction}."
  end

end

# rover1 = Rover.new(0, 0, "N")
#
# puts rover1.status
# rover1.turn("L")
# puts rover1.status
# rover1.move
# puts rover1.status
# rover1.turn("R")
# rover1.status
# rover1.move
# rover1.move
# puts rover1.status
