# Elevators

Earlier this week I was waiting on the elevator. I had pressed the button a moment ago, & hearing the characteristic ding I looked up. Two sets of elevator doors had opened. I had pressed the button once, but two elevators had arrived. 

This is the first time I've ever seen a physical manifestation of a race condition.

So, duly inspired, I've adapted an example from a blog post by Jessie Storimer. His example was about sheep, mine will be about [elevators](elevator.rb). Take a look. Run it a couple of times & you'll likely see the race condition in action. Then fix it :)

By the way, the original blog post (spoiler alert) is [here](http://www.rubyinside.com/does-the-gil-make-your-ruby-code-thread-safe-6051.html). Spoilers notwithstanding, you should read it when you're done. It's quite good.
