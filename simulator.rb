require_relative 'robot.rb'

robot = Robot.new

loop do
  print "Ввод:"
  command = gets.chomp
  args = []
  if command.include? 'place'
  	args = command.delete("place(").delete(")").delete("\'").split(",")
  	command = :place
  end
  next unless robot.respond_to? command
  result = 
  if args.empty?
    robot.public_send(command)
  else
    robot.public_send(command, args)
  end
  puts result
end
