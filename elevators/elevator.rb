class Elevator
  def initialize
    @requested = false
  end

  def requested?
    @requested
  end

  def request!
    puts "Coming to get you!"
    @requested = true
  end
end

elevator = Elevator.new

5.times.map do
  Thread.new do
    unless elevator.requested?
      elevator.request!
    end
  end
end.each(&:join)
