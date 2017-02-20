# Fixer Upper

Last week Sophia Shao had us fire up a gem under [rubinius](http://rubini.us/) steam & see what blew up. So I took a look at [tocsin](https://github.com/tocsin/tocsin), an alarm gem used in a handful of places to send email to a specific list of email addresses depending on the particular alarm topic. I expected that I might find one or two problems in Tocsin itself, but what I got was something truly special. Without further gilding, check this out:

https://github.com/mikel/mail/blob/master/lib/mail/parts_list.rb#L2-L23

Yeah, that just happened. First we inherited from a fundamental Ruby type, then we un-define map. Umm, whut? This raises a ruckus with rubinius, aside from being totally horrible in its own right. Bringing us to this weeks kata: fix it. Specifically ...

1. Write a failing test
2. Correct the madness
3. Commit
4. PULL REQUEST

Alternatively if you saw some sort of error in the gem you worked with last week then you should feel free to focus on that. The point of the kata is to contribute back to the open source community, so make sure you complete step #4.
