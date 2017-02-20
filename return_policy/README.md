# Return Policy

Programming languages handle the semantics & behavior of return values differently from language to language. Ruby has implicit returns, Python does not, &c.

One interesting characteristic of the Go programming language is that it has semantics for a named return value. For example:

```golang
package main
import "fmt"

func square(num int) (squared int) {
  squared = num * num

  return // wait, wut?
}

func main() {
  fmt.Println(square(2))
}
```

This weeks kata is a question: what's the use case for this behavior?
