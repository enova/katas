# Perfectly Presentable

Spring is a time we often think of cleaning up our Winter-musty homes, and I don't see any reason that our code should be any different. However, much as we might find profound messiness barely contained by a closet door, sometimes perfectly presentable code can still do with a change.

Consider the following example:

```ruby
## app/controllers/clean_controller.rb
def CleanController < ApplicationController
  def show
    neat_and_tidy = DashingYoungObject.find(params[:id])
    render json: neat_and_tidy.extend(PerfectlyPresentable)
  end
end
```
  
```ruby
## lib/perfectly_presentable.rb
module PerfectlyPresentable
  # various bits of presentation logic
end
```

What would you change, and more importantly how &amp; why? What do you wish you know that's not on display in the example that might help you better answer these questions? I'd suggest you mull this over first, but don't dwell on it for too long.

If you're satisfied with the length of your meditation or just like to jump to the punch line, read this: http://j.mp/dci-in-ruby.

Long story short: just because it looks clean doesn't mean it really is.
