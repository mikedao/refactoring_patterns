class Plane
  attr_reader :engines

  def initialize
    @engines = Array.new(4){ Engine.new }
  end
end

class Engine
  def start
    @running = true
  end

  def running?
    !!@running
  end
end

dusty = Plane.new
dusty.engines.each{|e| e.start}
