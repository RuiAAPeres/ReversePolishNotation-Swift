## Reverse Polish Notation

From [Wikipedia](http://en.wikipedia.org/wiki/Reverse_Polish_notation):

>Reverse Polish notation (RPN) is a mathematical notation in which every operator follows all of its operands, in contrast to Polish notation, which puts the operator in the prefix position. It is also known as postfix notation and is parenthesis-free as long as operator arities are fixed. The description "Polish" refers to the nationality of logician Jan Łukasiewicz, who invented (prefix) Polish notation in the 1920s.

This exercise is inspired on the [Learn you some erlang for great good!](http://learnyousomeerlang.com/content). 

### Usage

```swift
Calculator.evaluateReversePolishNotationExpression("1 2 + 3 + 10 + 20 +")
```

This will return an array with a single element: `[36]`.
