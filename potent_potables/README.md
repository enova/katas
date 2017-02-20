# Potent Potables

Consider the following code:

```ruby
class Potable
  attr_accessor :access_log, :contents
 
  def initialize(contents = "This is my content")
    @access_log = {}
    @contents   = contents
  end
 
  def contents
    @access_log[Time.now] = @contents
    @contents
  end
end
```

Is the method `Potable#contents` idempotent? What does it mean to be idempotent? Is it a valuable concept in programming, &amp; if so where?

Discuss.
