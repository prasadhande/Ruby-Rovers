class Direction
  attr_accessor :cardinal,:degree
  def initialize(str)
    @cardinal = str
    @degree = 0
  end
  def set(att)
    if att.class == String
      @cardinal, @degree = att, to_degree(att)
    else
      @degree, @cardinal  = att, to_cardinal(att)
    end
    nil
  end
  def to_degree(str = @cardinal)
    case str
      when 'N' then 0
      when 'S' then 180
      when 'E' then 90
      when 'W' then 270
      else self
    end
  end
  def to_cardinal(int = @degree)
    case int.to_i
      when 0 then 'N'
      when 180 then 'S'
      when 90 then 'E'
      when 270 then 'W'
      else self
    end
  end
  def ==(str)
    if str.class == String
      cardinal == str
    else
      degree == str.to_i
    end
  end
end