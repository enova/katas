# The Stanley Cup

I'd love to claim that I waited until the big rally to celebrate the Blackhawks winning the 2015 Stanley Cup, but the honest truth is that I spent too much time watching the finals & not enough time authoring katas :) So, in honor of my disgrace, I've decided to work Hockey into the kata.

You're building a tool to track the NHL finals. You want to be able to interact with game objects, but you never want to create them in an inconsistent state. Adding to this, you may want to include announcers, MVPs, injured player lists, & a number of other characteristics when you create the game object, but all of those things are optional but with some interdependencies. You wouldn't want a game that has commentary, but no commentator; you wouldn't want to schedule a commenter for the food network for a hockey game; you wouldn't want to list a retired player on the roster, even if they're attending the game.

So, questions:

1. Is there a design pattern that covers this type of problem?
2. Is this a relevant design pattern for software implemented with ruby? Why or why not?
