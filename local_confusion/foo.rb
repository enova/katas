class Foo
  attr_accessor :bar

  def initialize(bar = 42)
    self.bar = bar
  end

  def baz
    if bar < 0
      bar = 0
    end
    puts bar.inspect
  end
end

a = Foo.new
puts a.bar
a.baz
