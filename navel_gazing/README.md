# Navel Gazing

With all the recent hullabaloo and my running around like a crazy person yesterday I forgot to write up this weeks kata. It's just as well, because this one involves a bit of [navel gazing](https://www.google.com/search?q=navel+gazing) of a particularly Ruby flavor.

Ruby 2.2 added a new method to `Object`, [`Object#itself`](http://ruby-doc.org/core-2.2.0/Object.html#method-i-itself). As you can see from the documentation, all it does is return the object itself, hence the name. The kata for this week is simply to try to answer the question, why? What could this method possibly accomplish? If it's just there for vanity's sake, why not just define a table flip emoticon like [sidekiq](https://github.com/mperham/sidekiq/blob/2f9258e4fe77991c526f7a65c92bcf792eef8338/lib/sidekiq.rb#L52)?

_NOTE: The astute observer may notice that Avdi Grimm produced a [RubyTapas episode](https://www.rubytapas.com/2015/02/09/episode-280-itself/) on this very subject. If you've seen it already, please don't ruin it for everyone else. A little contemplation can go a long way._
