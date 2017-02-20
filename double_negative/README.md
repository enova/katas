# Double Negative

Watch [Ruby Tapas episode #094](https://www.rubytapas.com/2013/05/08/episode-094-bang-bang/), "Bang Bang".

On this topic, an interesting question popped into my head the other day. Was `!!` itself an operator, or was invoking `!!` the equivalent of negating a negation? As it turns out it's the latter, but that spurred me on to consider a what-if scenario. What if `!!` were an operator? So I cooked up a little script ([see here](double_negative.rb)) to see. Low and behold, it is marginally faster to define the operator. 

So, this week's kata is, aside from watching the video, this: is this a bad idea? If so, why? If not, and I'm really curious to see if anyone takes this position, why not?
