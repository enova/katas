# The Scopes Trial

See the kata [here](README.md).

## The Verdict

This [blog post](http://blog.plataformatec.com.br/2013/02/active-record-scopes-vs-class-methods/) sums it up pretty well. Basically scopes that are defined without using a callable are evaluated at load time. This means that the time element that seemed so dynamic actually becomes like a static value, unchanging until the vagaries of your rails server or process management system necessitate the class be reloaded.

Thus, the right way to write this is the Rails 4 way:

```ruby
class Widgets < ActiveRecord::Base
  # [...]
  scope :old, -> { where(["created_at < ?", 12.hours.ago]) }
  # [...]
end
```
