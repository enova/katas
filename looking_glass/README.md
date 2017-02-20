# Through the Looking Glass

> “If I had a world of my own, everything would be nonsense. Nothing would be what it is, because everything would be what it isn't. And contrary wise, what is, it wouldn't be. And what it wouldn't be, it would. You see?”
>
> ― Lewis Carroll, _Alice's Adventures in Wonderland_ &amp; _Through the Looking-Glass_

```
>> nil + 2
NoMethodError: undefined method `+' for nil:NilClass
from (irb):1
from /usr/bin/irb:12:in `<main>'
>> nil.a_method.another_method
NoMethodError: undefined method `a_method' for nil:NilClass
from (irb):2
from /usr/bin/irb:12:in `<main>'
>> class NilClass
>>   def method_missing(method_name, *args, &block)
>>     nil
>>   end
>> end
=> nil
>> nil + 2
=> nil
>> nil.a_method.another_method
=> nil
```

Discuss.
