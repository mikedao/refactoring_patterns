class Plane
  attr_reader :engines

  def initialize
    @engines = Array.new(4){ Engine.new }
  end

  def start_all_engines
    @engines.each do |engine|
      engine.start
    end
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
dusty.start_all_engines
