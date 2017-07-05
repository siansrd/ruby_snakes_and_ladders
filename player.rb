class Player

  attr_accessor :position

  def initialize
    @position = 0
  end

  def move(num)
    @position += num
  end

end