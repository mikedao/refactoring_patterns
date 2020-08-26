class Plane
  attr_reader :engine_1_running, :engine_2_running,
              :engine_3_running, :engine_4_running

  def initialize
    @engine_1 = Engine.new
    @engine_2 = Engine.new
    @engine_3 = Engine.new
    @engine_4 = Engine.new
  end

  def start
    @engine_1.start
    @engine_2.start
    @engine_3.start
    @engine_4.start
  end

end

class Engine
  def intitialize
    @running = false
  end

  def start
    @running = true
  end
end

dusty = Plane.new
dusty.start
