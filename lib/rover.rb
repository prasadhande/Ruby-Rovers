class Rover
  attr_accessor :navigator, :verbose
  def initialize(str)
    str = str.split
    @navigator = Navigator.new(str[0].to_i, str[1].to_i, str[2])
  end
  def inspect
    {:x => @navigator.pos_x, :y => @navigator.pos_y, :d => @navigator.direction.to_cardinal}
  end
  def command(string)
    string.split(//).each do |c|
      case c
        when /(L|R)/
          @navigator.rotate(c)
          puts "I'm rotating #{c} kind sir, direction: #{@navigator.direction.to_cardinal}" if @verbose
        when 'M'
          old_x, old_y = @navigator.pos_x, @navigator.pos_y
          @navigator.move
          puts "I'm moving forward from #{old_x},#{old_y} to #{@navigator.pos_x}, #{@navigator.pos_y}" if @verbose
      end
    end
  end
end