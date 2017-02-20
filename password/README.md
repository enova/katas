# Password Complexity

At a financial company like ours, information security is paramount.  To help protect our assets, we need to develop a tool to help compare old and new passwords.

## Exercise
1. Write a `Password` class that can compute the Levenshtein difference of two passwords.
2. We also want to compare the complexity of the passwords.  We already have a [simple strategy](simple_strategy.rb) for determining the complexity of a single password.
3. On second thought, our simple strategy is a bit too simple.  Design your own password strength metric and inject it to your password comparer.
