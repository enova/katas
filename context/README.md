# Context

In his 1996 novel **_Excession_**, Ian M. Banks describes, among other things, a so called "Outside Context Problem." This problem is one that "most civilizations would encounter just once, and which they tended to encounter rather in the same way a sentence encountered a full stop."

I've experienced what I feel is a superficially similar problem in my career as a developer. I once had to code to an vendor's spec that, according to the documentation, would issue a callback to our API, and when a call was received & successfully handled our API should respond with success. I naively understood this to mean 200 & coded to that. In fact what was expected was the literal text "SUCCESS" in the body, the http status code was ignored.

You could argue that I should've read the specs more closely, & there's a lot of validity to that. You could also argue that this is not the norm, and that's possibly true. Regardless, It is with this in mind that I present this week's kata: compose some ruby (method, class, what-have-you) that will gracefully attempt to return the numerical product of it's input.

Simple enough, right? The twist is this: it needs to pass the tests. Which tests? The ones you don't get to see until after you've provided your solution, indeed until I post a response early next week.
