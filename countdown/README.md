# Commencing Countdown, Engines On

I'm almost finished making a new soundsystem.  I've got an awesome David Bowie playlist, and the only thing missing is a display for the time remaining for the current track.

Open `display.rb` and make its `#to_s` method to return an LCD string representation of a given time, passed in to `#initialize` as seconds.  Each digit in the LCD string should be made up of a 3x3 grid of spaces, pipes and underscores.

Example:

```
 _           _     _           _     _     _     _     _ 
| |     |    _|    _|   |_|   |_    |_      |   |_|   |_|
|_|     |   |_     _|     |    _|   |_|     |   |_|     |
```

The hour/minute/second delimiter should be a blank row and two rows of periods like so:

```

.
.
```

Check out `spec/fixtures` for some sample outputs.  When you're finished, run `countdown.rb` and try it out!
