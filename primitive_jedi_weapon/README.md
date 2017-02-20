# Primitive Jedi Weapon

In training, we have the concept of a course (e.g. Engineering Baseline I). Each course has an estimated completion time or duration.  In our training dashboard, we represent this duration with `#min_duration` and `#max_duration` fields:

```
#<Course:0x007f005a215de8
 @description="Learn to build and test a complete Ruby on Rails application. This isn't a basic intro: you will finish with some serious ruby chops.",
 @github_url="https://github.com/enova/level_up_exercises",
 @max_duration=6,
 @min_duration=4,
 @name="Level UP - Engineering Baseline I">
```

Using primitive values for the durations make them easy to use in calculations. However, it isn't easy to understand without context or documentation what the duration means.  Is it 4-6 weeks? months? days?  Will these durations always be integers, or could they include floating-point decimal values?

What would be a better way to represent this data?  What tradeoffs does the new representation have?


<sub>(inspired by [RubyTapas #400](http://www.rubytapas.com/episodes/400-Primitive-Obsession))</sub>
