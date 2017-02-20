# Let's Get Fiscal

```ruby
require 'json'
 
class Fiscal
  def initialize(conf = '{"fee":"1.00"}')
    @conf = JSON.parse(conf) rescue {}
  end
 
  def has_fee?
    fee = @conf['fee'] || @conf[:fee]
    fee =~ /^\$?\d*(\.?\d{2})?$/
  end
end
 
f = Fiscal.new({fee: 2}.to_json)
puts "Yep!" if f.has_fee?
  
# ^Z
# [1]  + continued  vim -O fiscal.rb
#
# zsh: suspended  vim -O fiscal.rb
# > ruby ./fiscal.rb
# > echo "what happened?"
# what happened?
# >
```
