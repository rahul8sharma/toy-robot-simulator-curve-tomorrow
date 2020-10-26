require_relative 'lib/simulator'

puts "=> Toy Robot Simulator"
puts "=> Enter a command, Valid commands are below:"
puts "=> \'PLACE X,Y,NORTH|SOUTH|EAST|WEST\', \'MOVE, LEFT, RIGHT, REPORT\' or Enter \'EXIT\' for exit the application"

simulator = Simulator.new

command = STDIN.gets.strip

while command && command.downcase != "exit"
  simulator.execute(command)
  command = STDIN.gets.strip
end

puts '=> Bye'