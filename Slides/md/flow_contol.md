# Flow Control
### `if` and `while` statements

---
class: middle

# OK, I'm sorry. Those first few classes were rough.

Some of you who haven't coded before might be like...
![](https://media.giphy.com/media/LRVnPYqM8DLag/giphy.gif)

---
class: middle

# It's gonna be OK. We just need those building blocks.

We know how to run individual statements but we haven't quite yet learned how to compose them in a way that accomplishes useful tasks. That is what we are going to start doing today.

---
class: middle

# So, we need a way to allow us to run certain instructions at certain points.

We might need to skip some lines of code, reference other bits of code, or run something multiple times. After all this is the whole point of doing this... to automate things. We are almost never going to need a program to just run top down, statement by statement.

---
class: middle

# This is where "flow control" comes in.

Flow control statements like the `if` and `while` statements in this class tells Python which instructions to run and when to run them.

---
class: middle

![](https://automatetheboringstuff.com/2e/images/000039.jpg)

---
class: middle

# Before we get into `if` we need to talk a little about code blocks and indentation.

Line of Python code that are grouped together to accomplish a task are called "blocks". In Python, unlike any other language, blocks are specified by indentation.

---
class: middle

# Indentation and Python

* A block of code begins with a level of indentation
* Lines of the same block must have the same indentation level
* Blocks end when indentation decreases


---
class: middle

# Indentation and Python (cont.)

* Indentation can either be a certain number of spaces or a certain number of tabs
* Common practice is to use 4 spaces or 1 tab that has 4 spaces of spaces
* It's not a syntax error to use 7 spaces or 16 or even 1. It just looks weird and is hard to read.

---
class: middle

# None of these are syntax errors but use the first one is good practice

```python
def four_spaces():
    a = 1
    b = 2
    return a + b
    
def one_spaces():
 a = 1
 b = 2
 return a + b
    
def sixteen_spaces():
                a = 1
                b = 2
                return a + b
```

---
class: middle

# Exercises

```python
def func_a():
 print('Hello')
 return None
 
def func_b():
  print('Hello')
    return None
  
def func_c():
    print('Hello')
    # return None
      return None
  
def func_d():
    print('Hello')
    return None



```

---
class: middle


# We've seen code blocks before... in the homework.

```python
def exercise_1(a):
    """
    What your solution should do
    """
    return a + 1
    
    
def exercise_2(a):
    """
    What your second solution should do
    """
    a = a + 1
    return a + 1
```

---
class: middle

# The `if` statement

--

# An if statement executes a block of code is a condition is met.

If the condition is not me the code block that procedes it will be completely skipped.

---
class: middle

# To define an `if` statment you to need to define the following components

* The `if` keyword
    * This has to be the first part of the statement
* A statement that evaluates to a Boolean value (This is called a condition)
    * This immediately follows the `if` keyword
* A colon
    * The colon character in Python states that the code block the follows "belongs" to the preceding statement
* A block of code
    * Remember that a code block must be indented

---
class: middle

# `if` statement example

```python
if 1 > 2:
    print('This will never print')
    
if 1 <= 2:
    print('This will always print')
```
```python
This will always print
```

---
class: middle

```python
if name == "Alice":
    print('Hi, Alice.')
```

Flow chart on next slide

---
class: middle

![](https://automatetheboringstuff.com/2e/images/000147.jpg)

---
class: middle

# What if we wanted to execute some code if the conditional in the `if` statement were not True?
![](https://automatetheboringstuff.com/2e/images/000118.jpg)

---
class: middle

We could write 2 `if`s...

```python
name = 'Brian'
if name == "Alice":
    print('Hi, Alice!')
if name != "Alice":                 # Catches everything that isn't 'Brian'
    print('Hello, stranger.')
```

---
class: middle

# Another (more commonly used) option is the `else` statement

`else` is an **optional** block of code that runs if the condition on the `if` statement is False. In other words, if the code block under the `if` statement doesn't run then the `else` block will.

“If this condition is true, execute this code. Or else, execute that code.”

---
class: middle

# `else` example

Defining an else statement is a lot like the `if` statement. You just don't need the conditional.

```python
name = 'Brian'
if name == "Alice":
    print('Hi, Alice!')
else:
    print('Hello, stranger.')
```
--
class: middle

# Exercises

```python
my_var = 'Goodbye'

if my_var == 'Hello':
    print('We made it into the if block')
    print('my_var is equal to "Hello"')
```

```python
my_var = 'Goodbye'

if my_var == 'Hello':
    print('We made it into the first if block')
    print('my_var is equal to "Hello"')
if my_var != 'Hello':
    print('We made it into the second if block')
    print('my_var is not equal to "Hello"')
```

--
class: middle

# Exercises

```python
my_var = 'Goodbye'

if my_var == 'Hello':
    print('We made it into the first if block')
    print('my_var is equal to "Hello"')
else:
    print('We made it into the else block')
    print('my_var is not equal to "Hello"')
```


```python
my_var = 'Goodbye'

if my_var == 'Hello':
    print('We made it into the first if block')
    print('my_var is equal to "Hello"')
if my_var == 'Good Afternoon':
    print('We made it into the second if block')
    print('my_var is equal to "Good Afternoon"')
```

--
class: middle

# Exercises

```python
my_var = 'Goodbye'

if my_var == 'Hello':
    print('We made it into the first if block')
    print('my_var is equal to "Hello"')
if my_var == 'Good Afternoon':
    print('We made it into the second if block')
    print('my_var is equal to "Good Afternoon"')
else:
    print('We made it into the else block')
    print('my_var is not equal to either "Hello" or "Good Afternoon"')
    
```

---
class: middle

# Exercises

```python
my_var = 'Goodbye'

if my_var == 'Goodbye':
    print('We made it into the first if block')
    print('my_var is equal to "Goodbye"')
if my_var == 'Good Afternoon':
    print('We made it into the second if block')
    print('my_var is equal to "Good Afternoon"')
else:
    print('We made it into the else block')
    print('my_var is not equal to "Good Afternoon"')
    
```

---
class: middle

# elif

### We have another option in `if` statements, it's called `elif`. It's shorthand for "else if" and is used to give us more than 2 options in the `if` statement.

```python
aapl_share = 318.31

if aapl_share < 270:
    print('Buy Apple)
elif aapl_share > 410:
    print('Sell Apple')
else:
    print('Hold Apple')
```

---
class: middle

# You can have as many `elif` statements as you want.

```python
a = 5

if a == 1:
    print(1)
elif a == 2:
    print(2)
elif a == 3:
    print(3)
elif a == 4:
    print(4)
elif a == 5:
    print(5)
else:
    print(None)
```

---
class: middle

# If statements run from top to bottom and as soon as 1 condition is met the rest of the if statement is skipped.

```python
a = 5

if a == 5:
    print(5)
elif a == 5:
    print(5)
elif a == 5:
    print(5)
elif a == 5:
    print(5)
elif a == 5:
    print(5)
else:
    print(None)
```

```python
5
```

---
class: middle

# Exercises

```python
a = 'abc'

if a == 'abc':
    b = 1
else:
    b = -1
```

```python
a = 'def'

if a == 'abc':
    b = 1
elif a == 'def':
    b = 2
else:
    b = -1
```

```python
a = 'ghi'

if a == 'abc':
    b = 1
elif a == 'def':
    b = 2
else:
    b = -1
```

---
class: middle

# Exercises

```python
a = 'ghi'

if a == 'ghi':
    b = 100

if a == 'abc':
    b = 1
elif a == 'def':
    b = 2
elif a == 'ghi':
    b = 3
else:
    b = -1
```
```python
a = 'abc'

b = 0

if a == 'abc':
    b = b + 1
elif a == 'def':
    b = b + 2
elif a == 'ghi':
    b = b + 3
else:
    b = -1
    
b = b + 1
```
```python
a = 'abc'
b = 0

if a == 'abc':
    b = 1
    
a = 'xyz'

if a == 'abc':
    b = b + 1
elif a == 'def':
    b = b + 2
elif a == 'ghi':
    b = b + 3
else:
    b = -1
```

---
class: middle

# Code blocks can have code blocks.

You just need to indent more. Same indent rules apply.

---
class: middle

# Let's refer back to our flow chart from earlier in the lecture.

![](https://automatetheboringstuff.com/2e/images/000039.jpg)

---
class: middle

# These are functionally the same...

```python
if raining and have_umbrella:
    print('Go outside.')
else:
    print('Wait until rain stops')
```
```python
if raining:
    if have_umbrella:
        print('Go outside.')
    else:
        print('Wait until rain stops.')
```

---
class: middle

# Why are these different?

```python
if raining:
    if have_umbrella:
        print('Go outside.')
    else:
        print('Wait until rain stops.')
```
```python
if raining:
    if have_umbrella:
        print('Go outside.')
else:
    print('Wait until rain stops.')
```

---
class: middle

# Nested code blocks are not exclusive to `if` statements.

### We are going to use code blocks within code blocks *heavily* for the rest of the course.

```python
def exercise_1(a):
    if a % 2 == 0:
        return 'even'
    else:
        return 'odd'
```

---
