# Every Day I'm Buffering

We've got a fairly large file with some data in it ([`test_data.junk`](test_data.junk)) that we need to load into our Lua program.  We have a working prototype for our reader written in Ruby ([`sample.rb`](sample.rb)).

1. Create a direct port of `sample.rb` over to the Lua programming language.
2. Notice there's a pretty big discrepancy between the Ruby read time and the Lua read time.  Why is this?
3. Create an optimal Lua implementation for the `read` function.
