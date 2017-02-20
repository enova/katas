# Are you even defined, bro?

**Example 1**

```ruby
def self.total_amt
  unless defined?(amount)
    amount = 300
  end
end
```


**Example 2**

```ruby
def self.total_amt
  amount = 300 unless defined?(amount)
end
```

What is the return value of `.total_amt` in Example 1? In Example 2? Why is this the case?
