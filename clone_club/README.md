# The Clone Club

I've been watching a lot of Orphan Black lately, and it gave me the idea for a pretty simple kata.

Please read the code below, it's quite short. Once you've done, consider two questions:

Is this a design pattern?

If so, does it have a name? What other uses might it have?

```ruby
class Clone
  class NotImplementedError < StandardError; end
 
  def action!
    # 1) do stuff ...
    # 2) face off to stage left, and ...
    emote
    # some other stuff, and end scene
  end
 
  def emote
    raise NotImplementedError, self
  end
end
 
class Leda < Clone
end
  
Leda.new.action!
```
