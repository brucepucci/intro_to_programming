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

We could store `f(x)` somewhere in as well, in math this would look something like...

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

---

# Syntax

1. The `def` keyword
2. A function name


```python
*def f
```

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

The return statement is optional. `None` will be returned if no return statment is executed.

---
