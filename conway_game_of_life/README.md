# The Conway Game of Life
_by Dan Schepers_

Hey everyone,

This week we'll be implementing [Conway's Game of Life](http://en.wikipedia.org/wiki/Conway%27s_Game_of_Life)... in Javascript! What I'm hoping to see is something like what's illustrated on the wikipedia page.

Some things to think about:

* How big will your grid be?
* How will you keep track of living cells?
* Concurrent modifications. If now is considered time t, then all cells should live/die/procreate based on the gamestate at t before you consider t+1.
* How will you initialize your game?

Bonus points if you do this using behavior driven development
