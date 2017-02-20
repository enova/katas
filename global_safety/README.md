# Global Safety

In Ruby we regularly get mileage out of global variables in the most utilitarian sense. However, in a threaded context anything that isn't thread-safe is a bad idea (tm), and that definitely includes global variables.

```ruby
$HELLO = 'Hello World!'

Thread.new { puts $HELLO }
# => Hello World!
```

Sometimes, we need global variables scoped to the thread.  An example of this is the last match in a regular expression, `$~`.

```ruby
'hello world'.match(/hello/)

puts $~
# => hello

Thread.new { puts $~ }
# =>
```

## Problem:
I have a series of [processes](processes.rb) that I'm [executing in threads](run.rb).  Each of these processes logs its status together with its name and a thread identifier I've provided it.  However, I'd rather these processes not get their thread identifier from the caller.  Instead, I'd like to put its name in a thread-safe global variable that I can then reference inside [`BaseProcess#log`](base_process.rb).

Refactor this code to use a thread-safe global variable.
