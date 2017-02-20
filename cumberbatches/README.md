# Cumberbatches

Benedict Cumberbatch has appeared in over 50 [films](http://www.imdb.com/title/tt1408101/) and [television series](http://www.imdb.com/title/tt1475582/) , and he has also performed in several stage productions. For every performance, he has saved a digital copy of the script on the cloud. These scripts have become cumbersome (haha... _cumber_-some) to browse through, so his buddy built a Rails app that runs directly on his phone to aggregate them all.

Unfortunately, the Rails app has plenty of issues. It keeps crashing because it uses too much memory. It takes forever to load a page because of his slow 3G connection, and can max out his bandwidth usage in a couple of uses.

Here's a couple snippets from his app:

**app/controllers/script_controller.rb**

```ruby
def index
  @scripts = Script.all.order(:production_date)
end
```

**app/views/scripts/index.html.haml**

```haml
- @scripts.each do |script|
  = render partial: "script", locals: { script: script }
```

One possible solution to this problem is to use ActiveRecord's built-in batching functionality.

## The Exercise

Modify the above code to use batches to help Benedict cut down on his app's memory and bandwidth usage.
