class Navigator
  attr_accessor :direction, :pos_x, :pos_y
  def initialize(x, y, str)
    @pos_x = x.to_i
    @pos_y = y.to_i
    @direction = Direction.new(str)
  end
  def rotate(dir)
    degrees = @direction.to_degree
    degrees += 90 if dir == 'R'
    if dir == 'L'
      if degrees != 0; degrees -= 90; else; degrees = 270; end;
    end
    degrees = 0 if degrees >= 360
    @direction.set(degrees)
    self
  end
  def move
    @pos_y += 1 if @direction == "N"
    @pos_y -= 1 if @direction == "S"
    @pos_x += 1 if @direction == "E"
    @pos_x -= 1 if @direction == "W"
    self
  end
end