require_relative 'lib/plateu'
require_relative 'lib/direction'
require_relative 'lib/navigator'
require_relative 'lib/rover'
# Plateu Singleton.
rover = Rover.new('1 2 N')
rover.verbose = true
rover.command('LMLMLMLMM')
p rover.inspect

