require_relative 'robot.rb'

robot = Robot.new
robot.move
robot.move
robot.left
robot.move
robot.report
robot.place([0,0,'sgbs'])
robot.move
robot.report

robot.place([0,0,'NORTH'])
robot.move
robot.report

robot.place([0,0,'NORTH'])
robot.left
robot.report

robot.place([1,2,'EAST'])
robot.move
robot.move
robot.left
robot.move
robot.report
