# Fibonacci

The Fibonacci sequence is a series of numbers where each number is the sum of the two numbers preceding it in the sequence.  The sequence is often represented with the starting digits being `1, 1` or `0, 1`.

We need to determine whether or not a given sequence follows the pattern: x<sub>i</sub> + x<sub>(i + 1)</sub> = x<sub>(i + 2)</sub>.

Your task is to create a `Sequence` class with a method `#fibonacci?` to determine whether it follows this pattern.  Try to do this with as few lines as possible.  Take a look at the [spec](spec/sequence_spec.rb) for guidance.

## Assumptions
* We do not care if numbers in the sequence are canonical Fibonacci numbers.  Given the sequence (5, 6, 11, 17, 28), `#fibonacci?` should return `true`.
* All sequences with fewer than three elements are considered to conform to this rule.
