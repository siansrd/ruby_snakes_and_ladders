class Board

  attr_reader :state

  def initialize(size, modifiers)
    @state = Array.new(size, 0)
    setup_snakes_and_ladders(modifiers)
  end

  def setup_snakes_and_ladders(modifiers)
    for key in modifiers.keys
      if (key + modifiers[key]) < 0
        print 'An error has occured'
        raise 'An error has occured' 
      end
      @state[key] = modifiers[key]
    end
  end

end
