class Rover

  attr_accessor :position_x, :position_y, :direction

  def turn(turn_direction)
    if turn_direction == "L" && @direction == "N"
      @direction = "W"
    end

  end

  def move
    if @direction == "W"
      @position_x -= 1
    end
  end

  def status
    return "The rover is currently at #{@position_x}, #{@position_y}, facing #{@direction}."
  end
  
end

rover1 = Rover.new
rover1.position_x = 0
rover1.position_y = 0
rover1.direction = "N"
puts rover1.status
rover1.turn("L")
puts rover1.status
rover1.move
puts rover1.status
