class: middle, center

# Functions

![](https://magoosh.com/math/files/2018/10/shutterstock_754217827-300x300.jpg)

---
class: middle

# Let's first think about what a function is in math...

A *function* is a relation between sets that associates to every element of a first set exactly one element of the second set.

In other words, a function takes some input and deterministically returns some form of output.

---
class: middle

# An example of a function you might see in some early algebra class is...

`f(x) = x - 2`

x: input
f(x): output

x - 2: operation
f: name of the function

We could store `f(x)` somewhere as well, in math this would look something like...

`y = f(x) = x - 2`

y: contains value of output

---
class: middle

# Functions in Python operate is almost exactly the same way.

A function is a set of statements that take inputs, do some specific computation and produces a predicatble output.

We've seen functions in all of our homeworks thus far, we just didn't go too far in-depth about how they are created or used.

---

# Syntax

1. The `def` keyword


```python
*def
```

`def` is a keyword in python that **defines** a function. The following word will be the name that the function is dinfed and referenced by.

---

# Syntax

1. The `def` keyword
2. A function name


```python
*def f
```

Function names must be a single word and must start with either a letter or underscore.

---

# Syntax

1. The `def` keyword
2. A function name
3. Parenthesis


```python
*def f()
```

---

# Syntax

1. The `def` keyword
2. A function name
3. Parenthesis
4. Parameters (More on this later)

```python
*def f(x)
```

Parameters are actually optional, you can have a function with no inputs. For example...

```python
def give_me_1():
    return 5
```

---

# Syntax

1. The `def` keyword
2. A function name
3. Parenthesis
4. Parameters (More on this later)
5. A colon

```python
*def f(x):
```

---

# Syntax

1. The `def` keyword
2. A function name
3. Parenthesis
4. Parameters (More on this later)
5. A colon
6. A code block

```python
def f(x):
*    x = x - 2
```

---

# Syntax

1. The `def` keyword
2. A function name
3. Parenthesis
4. Parameters (More on this later)
5. A colon
6. A code block
7. A return statement

```python
def f(x):
    x = x - 2
*    return x
```

The return statement is optional. `None` will be returned if no return statment is executed by the end of the code block. The function immediately stops executing once a return statement is hit and it "returns" the value that the expression to it's right evaluates to. This means that if there is code after a return statement and the return statement runs the code that follows will never run.

---

# Syntax

```python
def f(x):
    x = x - 2
    return x
```

This is called a function **definition**. The code inside of the function is not actualy run, the function is just registered with the Python interpreter for use later.

---

# Syntax

```python
def f(x):
    x = x - 2
    return x
```

To use the function we must **call** the function by referencing its name and following it with parenthesis and its expected arguments.

```
*f(2)
```
---

# Exercises

---
class: middle

# Why use functions?

* **Modularity** - Write once - Use anywhere
* **Maintainablity** - A single source of logic for some group of logic
* **Testability** - Confidence that a function works over-and-over again
* **Encapsulation** - Wrap related logic up a easily digestible pieces

---
class: middle

# Modularity

Modularity refers to how well a piece of a system can be removed or re-used elsewhere. If we have a function that reliably does something why should we write the same thing elsewhere?

### Example

Let's say we have the function defined below. We can easily copy and paste it or *import* it in another file and spend essentially no time writing it again AND be assured that it works as it did before.

```python
def absolute_value(num):
	if num >= 0:
		return num
	else:
		return -num


absolute_value(-4)
```
---

# Maintainability

Functions make your code more maintainable because your coding logic will have a single source of reference.

### Example

```python
def capitalize(word):
    word = word[0].upper() + word[1:]   # sinlge source of failure

capitalize('stay')
capitalize('healthy')
capitalize('world')
```
vs.

```python
'stay'[0].upper() + 'stay'[1:]          # 3 sources
'healthy'[0].upper() + 'healthy'[1:]    # of
'world'[0].upper() + 'world'[1:]        # failure
```

---

# Testability

Software tests are a way to gain confidence that a block of code works as expected

### Example

```python
def capitalize(word):
    word = word[0].upper() + word[1:]   # sinlge source of failure

assert capitalize('hello') == 'Hell0'
```
If this were not a function it wouldn't be testable.

---
class: middle

# Encapsulation

Encapsulation refers to the action of enclosing some logic in or as if in a capsule. This is sort of in support to the prior 3 concepts in that if we propery encapsulate our logic it will be more modular, more testable and easier to maintain.

### Example

```python
*def square_list(nums):          # square all the numbers in our list
*    result = list()
*    for item in nums:
*        result.append(item ** 2)
*    return result
```

---
class: middle

# Encapsulation

Encapsulation refers to the action of enclosing some logic in or as if in a capsule. This is sort of in support to the prior 3 concepts in that if we propery encapsulate our logic it will be more modular, more testable and easier to maintain.

### Example

```python
def square_list(nums):
    result = list()
    for item in nums:
        result.append(item ** 2)
    return result

*my_list = [1, 2, 3, 4]          # test our function
*square_list(my_list)
```

```
[1, 4, 9, 16]
```

---
class: middle

# Encapsulation

Encapsulation refers to the action of enclosing some logic in or as if in a capsule. This is sort of in support to the prior 3 concepts in that if we propery encapsulate our logic it will be more modular, more testable and easier to maintain.

### Example

```python
def square_list(nums):
    result = list()
    for item in nums:
        result.append(item ** 2)
    return result

*def sum_of_squares(nums):          # sum all of the squares in our list
*    return sum(square_list(nums))  # use square_list to make this easy
```
---
class: middle

# Encapsulation

Encapsulation refers to the action of enclosing some logic in or as if in a capsule. This is sort of in support to the prior 3 concepts in that if we propery encapsulate our logic it will be more modular, more testable and easier to maintain.

### Example

```python
def square_list(nums):
    result = list()
    for item in nums:
        result.append(item ** 2)
    return result

def sum_of_squares(nums):
    return sum(square_list(nums))

*my_list = [1, 2, 3, 4]
*sum_of_squares(my_list)    # test our new function
```

```
30
```

---
class: middle

# Function Composition

The previous example of combining functions is called "function composition". I'm sure you've seen soemthing like this before in algebra class. As a refresher it looked something like this for `f(g(x))`...

![](https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSyV1AdlLfRV4CGSVAgSf17ewUCqr5bOQwkO1xfuW1CklgQq4qF)

---
class: middle

# Function Composition

Let's code out a more specific example. The algebra for what we wanna code looks something like this...

![](https://mathbitsnotebook.com/Algebra2/Functions/gans5G.gif)

Let's just make 2 function `f` and `g` and then compose them so we get a proper answer.

---
class: middle

# Function Composition

![](https://mathbitsnotebook.com/Algebra2/Functions/gans5G.gif)

```python
*def f(x):
*    return 1 / (x+3)
```

---
class: middle

# Function Composition

![](https://mathbitsnotebook.com/Algebra2/Functions/gans5G.gif)

```python
def f(x):
    return 1 / (x+3)

*def g(x):
*    return x / (x - 2)
```

---
class: middle

# Function Composition

![](https://mathbitsnotebook.com/Algebra2/Functions/gans5G.gif)

```python
def f(x):
    return 1 / (x + 3)

def g(x):
    return x / (x - 2)
```

```python
f(g(2))
```

```python
0.23529411764705882
```

---
class: middle

# Function Composition

![](https://mathbitsnotebook.com/Algebra2/Functions/gans5G.gif)

```python
def f(x):
    return 1 / (x + 3)

def g(x):
    return x / (x - 2)

*def reduced_fg(x):      # test against algebraic reduction
*    return (x - 2) / (2*(2 * x - 3))
```

---
class: middle

# Function Composition

![](https://mathbitsnotebook.com/Algebra2/Functions/gans5G.gif)

```python
def f(x):
    return 1 / (x + 3)

def g(x):
    return x / (x - 2)

def reduced_fg(x):
    return (x - 2) / (2 * (2 * x - 3))
```

```python
f(g(10)) == reduced_fg(10)
```

```python
True
```

---
class: middle

# The Call Stack

This is pretty important concept and I actually think the book does a pretty good high level job explaining it so I am gonna borrow a lot from there. First something a little conceptual digression.

---
class: middle

# The Call Stack

"Imagine that you have a meandering conversation with someone. You talk about your friend Alice, which then reminds you of a story about your coworker Bob, but first you have to explain something about your cousin Carol. You finish you story about Carol and go back to talking about Bob, and when you finish your story about Bob, you go back to talking about Alice. But then you are reminded about your brother David, so you tell a story about him, and then get back to finishing your original story about Alice."

![](https://automatetheboringstuff.com/2e/images/000109.jpg)

---
class: middle

# The Call Stack

This conversation is analous to how function calls and the "call stack" works in Python. Once we call a function we jump into that function until we either finish it or call another function; similar to either finishing a thought or starting a new though in the conversation example.

Its called a stack becuase when a new function is called we put it on top of the stack (aka "push"). Once a function finishes we remove it from the stack (aka "pop", we've seen pop before used in a similar concept).

---
class: middle

# The Call Stack

Since we are online let's use an [online stack visualizer](https://www.cs.usfca.edu/~galles/visualization/SimpleStack.html).



---
class: middle

# The Call Stack
```python
def a():
    print('a() starts')
    b()
    d()
    print('a() returns')

def b():
    print('b() starts')
    c()
    print('b() returns')

def c():
    print('c() starts')
    print('c() returns')

def d():
    print('d() starts')
    print('d() returns')

a()
```