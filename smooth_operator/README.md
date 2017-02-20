# Smooth Operator

Define a cartesian product binary operator for arrays. Traditionally this would look something like this:

```
[1,2] x [3,4] =
   [ [1,3], [1,4], [2,3], [2,4] ]
```

For n-dimensional representations it might look like this:

```
[1,2] x [3,4] x [5,6] =
   [[[1, 3], 5], [[1, 3], 6], [[1, 4], 5], [[1, 4], 6], [[2, 3], 5], [[2, 3], 6], [[2, 4], 5], [[2, 4], 6]]
```

But I'm working on a coordinate tracking system, & need a result with flattened tuples, like this:

```
[1,2] x [3,4] x [5,6] =
   [ [1, 3, 5], [1, 3, 6], [1, 4, 5], [1, 4, 6], [2, 3, 5], [2, 3, 6], [2, 4, 5], [2, 4, 6] ]
```

That's it. Happy mathing!
