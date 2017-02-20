# Call Me Maybe

More than once I've written or run across code that I wasn't sure how to test. As often I've run across tests that I wasn't sure were required. One interesting example is the case of the method that accepts a block. What about the block? Is that in scope?

So, to be a little more concrete, consider the code below.

```ruby
def do_stuff(*args, &block)
  return if args.empty?
  args.map { |arg| block.call(arg) }
end
```

I have a conditional, so I have differential results. I could test the guard condition easily enough, but what about that block? Should I test that it's executed? What's the easiest way to do that without coupling myself too tightly to what's in the method?

If you have some time, then mull it over & reply with some ideas. If you want to get straight to the punchline, watch the [video](https://www.rubytapas.com/2013/08/01/episode-121-testing-blocks/).

The more interesting question is this: should I even be testing this?
