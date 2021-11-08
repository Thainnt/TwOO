class Player
  attr_accessor :life
  attr_reader :name

  def initialize(name)
    @name = name
    @life = 3
  end

  def current_life
    @life -= 1
  end

end