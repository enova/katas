# Incremental Increment

Some of you might be asking why I didn't send out this week's kata earlier. The truth is that I've been planning for, executing, & cleaning up after my Son's birthday party. He just turned two, so you can imagine that it was a mess.

So, in honor of my son Max & his big '10' (I gave him some balloons from Enova's ten year gala & told him they were for him & the number was in binary), I've constructed a kata. Here's the code:

```ruby
require './max_count'

describe MaxCount do
  let(:one)     { described_class.new('01') }
  before        { @maxwell = one }
  
  it 'will increment' do
    @maxwell += one
    expect(@maxwell).to eq(one + one)
  end
end
```

Your job is to make this one test pass ... call it a birthday present :)

A minor detail: after Max's birthday party, I'm naturally looking to minimize the mess, we're talking as near to zero as can be. So, when you make this code pass write _**as little code as possible**_.

Here's to no more messes, and a happy birthday :)
