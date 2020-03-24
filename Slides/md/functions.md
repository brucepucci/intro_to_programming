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

f: function name

---
class: middle

# Functions in Python operate is almost exactly the same way.

A function is a set of statements that take inputs, do some specific computation and produces a predictable output.

We've seen functions in all of our homework thus far, we just didn't go too far in-depth about how they are created or used.

---

# Syntax

1. The `def` keyword


```python
*def
```

`def` is a keyword in python that **defines** a function. The following word will be the name that the function is defined and referenced by.

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

The return statement is optional. `None` will be returned if no return statement is executed by the end of the code block. The function immediately stops executing once a return statement is hit and it "returns" the value that the expression to it's right evaluates to. This means that if there is code after a return statement and the return statement runs the code that follows will never run.

---

# Syntax

```python
def f(x):
    x = x - 2
    return x
```

This is called a function **definition**. The code inside of the function is not actually run, the function is just registered with the Python interpreter for use later.

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
class: middle

# Why use functions?

* **Modularity** - Write once - Use anywhere
* **Maintainability** - A single source of logic for some group of logic
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

# Encapsulation

Encapsulation refers to the action of enclosing some logic in or as if in a capsule. This is sort of in support to the prior 3 concepts in that if we properly encapsulate our logic it will be more modular, more testable and easier to maintain.

### Example

```python
*def square_list(nums):          # square all the numbers in our list
*    result = list()
*    for item in nums:
*        result.append(item ** 2)
*    return result
```

---

# Encapsulation

Encapsulation refers to the action of enclosing some logic in or as if in a capsule. This is sort of in support to the prior 3 concepts in that if we properly encapsulate our logic it will be more modular, more testable and easier to maintain.

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

# Encapsulation

Encapsulation refers to the action of enclosing some logic in or as if in a capsule. This is sort of in support to the prior 3 concepts in that if we properly encapsulate our logic it will be more modular, more testable and easier to maintain.

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

# Encapsulation

Encapsulation refers to the action of enclosing some logic in or as if in a capsule. This is sort of in support to the prior 3 concepts in that if we properly encapsulate our logic it will be more modular, more testable and easier to maintain.

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

# Function Composition

The previous example of combining functions is called "function composition". I'm sure you've seen something like this before in algebra class. As a refresher it looked something like this for `f(g(x))`...

![](https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSyV1AdlLfRV4CGSVAgSf17ewUCqr5bOQwkO1xfuW1CklgQq4qF)

---

# Function Composition

Let's code out a more specific example. The algebra for what we wanna code looks something like this...

![](https://mathbitsnotebook.com/Algebra2/Functions/gans5G.gif)

Let's just make 2 function `f` and `g` and then compose them so we get a proper answer.

---

# Function Composition

![](https://mathbitsnotebook.com/Algebra2/Functions/gans5G.gif)

```python
*def f(x):
*    return 1 / (x+3)
```

---

# Function Composition

![](https://mathbitsnotebook.com/Algebra2/Functions/gans5G.gif)

```python
def f(x):
    return 1 / (x+3)

*def g(x):
*    return x / (x - 2)
```

---

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

# Function Composition

![](https://mathbitsnotebook.com/Algebra2/Functions/gans5G.gif)

```python
def f(x):
    return 1 / (x + 3)

def g(x):
    return x / (x - 2)

*def reduced_fg(x):      # test against algebraic reduction
*    return (x - 2) / (2 * (2 * x - 3))
```

---

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
*f(g(10)) == reduced_fg(10)
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

This conversation is analogous to how function calls and the "call stack" works in Python. Once we call a function we jump into that function until we either finish it or call another function; similar to either finishing a thought or starting a new though in the conversation example.

Its called a stack because when a new function is called we put it on top of the stack (aka "push"). Once a function finishes we remove it from the stack (aka "pop", we've seen pop before used in a similar concept).

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

---
class: middle

# Scope

Scope refers to the portion of source code in which a variables's name can be used. In Python, variables created in functions are known to have **local scope**, meaning they are only accessible within that function. A variable that has local scope is called a **local variable**.

The opposite local scope is **global scope** and a variable that has the property of global scope is called a **global variable**. A global variable is accessible from anywhere in the program.

Variable must have either global or local scope.

---
class: middle

# Scope

Try to think of scope as a container. Once that container is destroyed all of the variables is destroyed all variables inside of it are forgotten. Global scope is created when a program starts running and is destroyed when the program finishes. There is only 1 global scope.

Local scope is created when a function is called and is destroyed when it finishes. The next time you call this function it has no recollection of what happened the last time it ran. A new variable "container" is created every time. There can be an arbitrary amount of local scopes.

---

# Scope

Operations inside of a function have access to local and global variables. Operations outside of a function can only access global variables.


```python
*x = 0  # create a variable in gloabl scope
```

---

# Scope

Operations inside of a function have access to local and global variables. Operations outside of a function can only access global variables.

```python
x = 0

def my_func():
*    y = 1    # create a variable in scope local to my_func
```

---

# Scope

Operations inside of a function have access to local and global variables. Operations outside of a function can only access global variables.

```python
x = 0

def my_func():
    y = 1
*    print(x)   # We can access global vaibales
*    print(y)   # and local varibales in a function

my_func()
```

```
0
1
```

---

# Scope

Operations inside of a function have access to local and global variables. Operations outside of a function can only access global variables.

```python
x = 0

def my_func():
    y = 1

*print(x)   # We can access global vaibales in global scope
*print(y)   # But not local ones
```

```
0
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
NameError: name 'y' is not defined
```

---
class: middle

# Scope

If we refer back to our call stack example we can see that local scope pertains to all variables created in each item of the stack. When the item on the stack gets destroyed the variables are forgotten.

---
class: middle

# Not only are global variables accessible inside of functions but we can also change their value

Back to our example...

```python
x = 0

def my_func():
    x += 1  # Change the value of x.

*print(x)   # Notice that my_func doesnt do anything
            # until it is called
```

```
0
```

---

# Not only are global variables accessible inside of functions but we can also change their value

```python
x = 0

def my_func():
    x += 1  # Change the value of x.

print(x)
*my_func()  # change the value of x
*print(x)   # see updated x
```

```
0
1
```

---

# Variables can be created in local scope that have the same name as a variable in global scope.

The globally scoped variable is non-addressable for the rest of the duration of the local scope. The global scope variable will retain it's value after the local scope is terminated.

```python
x = 0

*def my_func():
*    x = 1    # create a variable with the same name
*    print(x) # print the LOCAL vaiable not the global one
```
---

# Variables can be created in local scope that have the same name as a variable in global scope.

The globally scoped variable is non-addressable for the rest of the duration of the local scope. The global scope variable will retain it's value after the local scope is terminated.

```python
x = 0

def my_func():
    x = 1
    print(x)

*my_func()
*print(x)
```

```
1
0
```

---

# Variables can be created in local scope that have the same name as a variable in global scope.

The globally scoped variable is non-addressable for the rest of the duration of the local scope. The global scope variable will retain it's value after the local scope is terminated.

```python
x = 0

def my_func():
    x = 1
    print(x)

my_func()
print(x)
```

```
1
0
```

**IMPORTANT PIECE HERE... DON'T DO THIS! YOU WILL BREAK SOMETHING!**

---

# The `global` keyword

You can essentially "ship" a variable up to global scope from local scope with the global keyword. This is called scope promotion

```python

def my_func():
    global x
    x = 1

print(x)   # Won't be there yet because the code hasn't run
```

```
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
NameError: name 'x' is not defined
```

---

# The `global` keyword

You can essentially "ship" a variable up to global scope from local scope with the global keyword. This is called scope promotion

```python

def my_func():
    global x
    x = 1

my_func()
print(x)
```

```
1
```


---
class: middle

# Next Class Set Up

In general it's a pretty bad idea to modify or access global variables inside of a function. So, how we we pass state from function to function or scope to scope? The answers is with something called `parameters`... which we will cover Thursday.