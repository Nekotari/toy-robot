require_relative 'engine.rb'

class Robot
include Engine
  
  def place(args)
  return  unless validate_position(args[0].to_i) && validate_position(args[1].to_i) && validate_facing(args[2])
   @position_x = args[0].to_i
   @position_y = args[1].to_i
   @facing = args[2]
   @is_placed = true
  end

 private

  def validate_position(position)
  	(0..5).include?(position)
  end

  def validate_facing(facing)
    DIRECTIONS.include?(facing)
  end
end
