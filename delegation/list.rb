class List
  def initialize(*args)
    @list = Array.new(*args)
  end

  def sort
    self.class.new @list.sort.reverse
  end

  def respond_to?(method)
    @list.respond_to?(method)
  end

  def method_missing(method_name, *args, &block)
    @list.send(method_name, *args, &block)
  end
end
