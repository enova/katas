# Much Ado About Nothing

In [Through the Looking Glass](../looking_glass/README.md), we investigated monkey-patching `NilClass` to return `nil` on `method_missing`.  In [Ruby Tapas #114](http://www.rubytapas.com/episodes/114-Null-Object), Avdi investigates a way to accomplish something similar without the use of monkey-patching:

```ruby
class MyProcess
  attr_accessor :logger

  def initialize(log)
    @logger = log
  end

  def logger
    @logger || NullLogger.instance
  end

  def start
    @logger.debug('Starting my process!')
  end

  def stop
    @logger.debug('Shutting down.')
  end
end

process = MyProcess.new(nil)
process.start
# >> NoMethodError: undefined method `debug` for nil:NilClass

class NullLogger
  include Singleton

  def debug(*); end
  def info(*); end
  def warn(*); end
  def error(*); end
  def fatal(*); end
end

process = MyProcess.new(NullLogger.instance)
process.start
process.stop
```

What are the advantages/disadvantages of this?

Let's look at another scenario:

```ruby
class MyProcess
  def has_logger?
    !!@logger
  end
end

process = MyProcess.new(nil)
puts process.has_logger?
# >> false

process = MyProcess.new(NullLogger.instance)
# >> true
```

Discuss.
