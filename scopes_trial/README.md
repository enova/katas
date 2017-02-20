# The Scopes Trial

## Discovery

One very common use of named scopes in rails applications is to look for items of a certain age. I'm going to skip the debate on whether or not you should use rails timestamps to do this & provide the simplest example of what I'm talking about:

```ruby
class Widgets < ActiveRecord::Base
  # [...]
  scope :old, where(["created_at < ?", 12.hours.ago])
  # [...]
end
```
 
This is succinct, reads well, and seems like a good idea. Unfortunately it's completely wrong. This next rendition attempts to neatly sidestep the problem:

```ruby
class Widgets <ActiveRecord::Base
  # [...]
  scope :old, where("created_at < NOW() - '12 hours'::interval")
  # [...]
end
```

While admirable, we're now less succinct, readable, and portable.

Also, we're still wrong.

## Closing Arguments

Your goal is to tell me **_why_**. Before you confidently reply, "because it's deprecated in Rails 4, sucka!" let me curtail your smug: the correct answer will actually explain **_why_** it's deprecated in Rails 4.

## The Verdict

[Spoilers ahead](VERDICT.md)
