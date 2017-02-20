# I've Got a Query

In the interest of ~~piracy~~ sharing, I'm developing a music downloading app for my friends.  I want to allow them to search my music with a plethora of optional filters.  Unfortunately, if I continue to use my current design, I can tell my [controller](song_controller.rb) is going to become fat with time.  I'd like to improve my design now to keep that from happening.  Lucky for me, there are some [great patterns](http://blog.codeclimate.com/blog/2012/10/17/7-ways-to-decompose-fat-activerecord-models/) to help with fat controllers and models, one of which is the Query Object pattern.

See if you can help me keep this controller slim with a query object.
