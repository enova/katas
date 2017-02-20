# I Reject Your Plurality and Substitute My Own

Active Support gives us some pretty nice extensions for core classes.  Some of the more useful extensions are String inflections.  These include `#camelize`, `#titleize` and `#pluralize`.

That last inflection is especially useful when writing views:

```ruby
'person'.pluralize  # => people
```

However, `#singularize` and `#pluralize` are not perfect.  As an example:

```ruby
'cactus'.pluralize  # => cactus
'goose'.pluralize   # => gooses
```

Hmm... okay?

```ruby
'cactus'.singularize  # => cactu
'geese'.singularize   # => geese
```

So Active Support's inflections aren't perfect.  How might we go about fixing this?
