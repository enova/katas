# Level (UP) Complete

While we're always working to improve our Level UP training program, an exceptionally sassy learner once suggested we'd shave a week off of their training if the pages just loaded faster. We resisted the urge to rap their knuckles, and instead did a bit of troubleshooting. The culprit was this block of code governing our hundred "COMPLETE" checkboxes, allowing learners to mark each exercise as they complete them:

```javascript
$('.course-content .exercise .complete-toggle').on("click", function() {
  LevelUp.markComplete(this);
});
```

Is there a faster way to handle these events?  What are the tradeoffs?
