require_relative '../robot/robot.rb'

module Engine

  def move
  	return unless @is_placed
  	case @facing
  	when 'NORTH'
  		@position_y += 1 if validate_position(@position_y  + 1)
  	when 'SOUTH'
  		@position_y -= 1 if validate_position(@position_y  - 1)
  	when 'EAST'
  		@position_x += 1 if validate_position(@position_x + 1)
  	when 'WEST'
  		@position_x -= 1 if validate_position(@position_x - 1)
  	end
  end

  def left
  	return unless @is_placed
  	new_index = DIRECTIONS.index(@facing) - 1
  	@facing = DIRECTIONS[new_index]
  end

  def right
  	return unless @is_placed
  	new_index = DIRECTIONS.index(@facing) + 1
  	@facing = DIRECTIONS[new_index]
  end

  def report
  	return unless @is_placed
  	puts [@position_x, @position_y, @facing].join(' ')
  end

  DIRECTIONS = ['NORTH', 'EAST', 'SOUTH', 'WEST'].freeze
end