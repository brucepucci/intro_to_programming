class: middle

# Containers

![](https://www.fastbuildcontainer.com/wp-content/uploads/2016/07/Snelbouwcontainergoede.jpg)

---
class: middle

# What is a container?

In Python, a container is a data type that holds an arbitrary number of other objects. You might hear these referred to as compund data types or sequences.

We use containers to keep track related groups of objects.

---
class: middle

# There are 4 built-in container data types in Python.

* Lists
* Dictionaries
* Tuples
* Sets

We will be spending time learning the `list` and `dict` data types. `tuple` and `set` are closely related and should come naturally with understanding of the prior.

---
class: middle

# The `list` Data Type

A `list` is the most basic example of a container in Python. Lists are a __mutable__ data type and are a way to store __ordinal__ data.

__mutatble__: A data type than can be changed after it has been creaded.

__ordinal__: Items in a list are gaurenteed to have a consistant, predictable position in a list's series.

---
class: middle

# Lists are made up of "elements" or "items"

A item (aka element) in a `list` can be __ANY__ Python object. This includes all of the data types we've learned about and all the ones in which we will learn about.

Lists have an arbitrary amount of elements meaning there is no maximum or minimum amount of elements that a `list` can hold. You can have an empty `list` or one infinitly large (presuming your computer has infinite memory).

Items in a list do __not__ have to be of the same type.

---

# Creating a `list`

There are many ways to create a list in Python. The 2 most common are using squared brackets and the `list()` built-in.

```python
* my_list = list()   # creating a list and assigning it to my_list
```

---

# Creating a `list`

There are many ways to create a list in Python. The 2 most common are using squared brackets and the `list()` built-in.

```python
# my_list = list()   # creating a list and assigning it to my_list
*my_list = []         # This is the same as the line above
```

---

# Creating a `list`

There are many ways to create a list in Python. The 2 most common are using squared brackets and the `list()` built-in.

```python
my_list = []
*my_list.append('a')  # We are added the str 'a' to the list
```

Don't worry too much about the `append` syntax right now. We'll get into it.

---

# Creating a `list`

There are many ways to create a list in Python. The 2 most common are using squared brackets and the `list()` built-in.

```python
my_list = []
my_list.append('a')  # We are added the str 'a' to the list
*my_list
```

```python
['a']  # return value
```

---

# Creating a `list`

There are many ways to create a list in Python. The 2 most common are using squared brackets and the `list()` built-in.

```python
my_list = []
my_list.append('a')  # We are added the str 'a' to the list
*my_list.append('b')  # This is an example of how lists are mutable
```


---

# Creating a `list`

There are many ways to create a list in Python. The 2 most common are using squared brackets and the `list()` built-in.

```python
my_list = []
my_list.append('a')  # We are added the str 'a' to the list
my_list.append('b')  # This is an exmaple of how lists are mutable
*my_list
```
```python
['a', 'b']  # return value
```

The order of this list is __never__ change unless the programmer changes it.

---

# Creating a `list`

There are many ways to create a list in Python. The 2 most common are using squared brackets and the `list()` built-in.

```python
*my_list = ['a', 'b']  # We could have just as easily 'initialized' our
*                     # list with the values 'a' and 'b'
my_list
```
```python
['a', 'b']  # return value
```

The requires us to have known that 'a' and 'b' belong in `my_list` at the time in which it were created though.

---
class: middle

# A list is considered an 'iterable' object

An iterable object is an object that is countable and is capable of returning its members or elements one at a time. There are many iterable objects in Python. Every container we are going to learn about is iterable.

![](https://www.esticastresearch.com/wp-content/uploads/2018/07/Conveyor-Belt-Market-300x180.jpg)


---
class: middle

# We actaully met an iterable data type before today... Anyone wanna guess which one?

---
class: middle

# Strings!

### The number of characters in a string are countable and they can be delt out one at a time.

---
# Creating a `list` (Part 2)

We can pass __any__ iterable as an argument to the `list` keyword to initialize a list with thatvalue.

```python
*my_list = list('Hello, world.') # Creating a list with the iterable typr str
```

---
# Creating a `list` (Part 2)

We can pass __any__ iterable as an argument to the `list` keyword to initialize a list with thatvalue.

```python
my_list = list('Hello, world.') # Creating a list with the iterable typr str
*my_list
```
```python
['H', 'e', 'l', 'l', 'o', ',', ' ', 'w', 'o', 'r', 'l', 'd', '.']   # return value
```
---
# Creating a `list` (Part 2)

We can pass __any__ iterable as an argument to the `list` keyword to initialize a list with thatvalue.

```python
my_list = list('Hello, world.') # Creating a list with the iterable typr str
my_list
```

```python
['H', 'e', 'l', 'l', 'o', ',', ' ', 'w', 'o', 'r', 'l', 'd', '.']   # return value
```

### Fun fact: This is why `len()` works on strings!

`len()` will work on any iterable type.

```python
*len(my_list)
```
```python
13
```

---
class: middle

# "Dude, you just went through a lot of terms I haven't seen before. It would be nice if there were a single place I could find all of them."

![](https://media.giphy.com/media/l0IxZpEsbQYba4h6E/giphy.gif)

---
class: middle

# Terms we just learned...

* __Container__ - A data type that holds an arbitrary number of other objects.
	* Examples: list, dict, tuple, set
	* aka: Compund data types, Sequences

* __Item__ - A memeber of a container
	* aka: Element

* __Mutable__ - A data type who's values can change.
	* Examples: list, dict, set

* __Immutable__ - A data type who's values CAN'T change.
	* Examples: int, float, str, None

* __Ordinal__ - A series of values who's order matters

* __Iterable__ - An object that is both countable and capable of returning a single element at a time

---
class: middle

# Exercises

[Creating A List](https://brucepucci.github.io/exercises/creating_a_list.html)

---
# Accessing Elements of a List

We can address a specific element of a list by placing an integer between squareed brackets directely after referencing the list. This integer is called an __index__.

```python
*spam = ['cat', 'bat', 'rat', 'elephant']
```

---
# Accessing Elements of a List

We can address a specific element of a list by placing an integer between squareed brackets directely after referencing the list. This integer is called an __index__.

```python
spam = ['cat', 'bat', 'rat', 'elephant']
*spam[0]    # evaluate to the element at the 0 position of spam
```

```python
'cat'
```

---
# Accessing Elements of a List

We can address a specific element of a list by placing an integer between squareed brackets directely after referencing the list. This integer is called an __index__.

```python
spam = ['cat', 'bat', 'rat', 'elephant']
spam[0]
*spam[3]    # evaluate to the element at the last position of spam
```

```python
'elephant'
```

---
# Accessing Elements of a List

We can address a specific element of a list by placing an integer between squareed brackets directely after referencing the list. This integer is called an __index__.

```python
spam = ['cat', 'bat', 'rat', 'elephant']
spam[0]
spam[3]
*spam[10]      # IndexError
```

```python
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
IndexError: list index out of range

```

---
class: middle

# "0-Indexing"

The first element in a Python is always indexed by 0. This means the final element in a Python list will always be one less than the length of the list.

<br>
<br>

![](https://automatetheboringstuff.com/2e/images/000090.jpg)

---
# Accessing Elements of a List

We can address a specific element of a list by placing an integer between squareed brackets directely after referencing the list. This integer is called an __index__.

```python
spam = ['cat', 'bat', 'rat', 'elephant']
spam[0]
spam[3]
*last_index = len(spam) - 1
*spam[last_index]      # We can use a variable as an index
```

```python
'elephant'
```

---
# Accessing Elements of a List

We can address a specific element of a list by placing an integer between squareed brackets directely after referencing the list. This integer is called an __index__.

```python
spam = ['cat', 'bat', 'rat', 'elephant']
spam[0]
spam[3]
*spam[len(spam)-1]      # Or we can just throw an expression in there
```

```python
'elephant'
```

---
# Negative Indexes

Negative indexes are just like regular indexes except they are a negative integer and start to the end of the list instead of the beginning.

```python
spam = ['cat', 'bat', 'rat', 'elephant']   # Same list as before
*spam[-1]    # evaluates to the last element in our list
```

```python
'elephant'
```

---
# Negative Indexes

Negative indexes are just like regular indexes except they are a negative integer and start to the end of the list instead of the beginning.

```python
spam = ['cat', 'bat', 'rat', 'elephant']
spam[-1]
*spam[-2]     # 2nd to last element in out list
```

```python
'rat'
```

---
# Negative Indexes

Negative indexes are just like regular indexes except they are a negative integer and start to the end of the list instead of the beginning.

```python
spam = ['cat', 'bat', 'rat', 'elephant']
spam[-1]
spam[-2]
*spam[-10]     # Same error as before
```

```python
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
IndexError: list index out of range
```

---
class: middle

# Indexing works on strings too!

![](https://developers.google.com/edu/python/images/hello.png)


---
class: middle

# Exercises

[List Indexing](https://brucepucci.github.io/exercises/list_indexing.html)

---
class: middle

# What if we wanted more than 1 element from our list to be returned?

So, we can return a single element in a list with an integer in square brackets. What if we wanted to return more than 1 element in our list?

* Accessing one-at-a-time untill you have what you want would be a pain
* We definitly don't want to loop the entire list for such a simple task

This is where "list slicing" comes in.

---
# List Slicing

Using a very similar syntax to previously learned indexing, we can slice a list by providing a start and end position in squared brackets separated by a colon. The slice is returned as a list.

```python
fruit = ['Apple', 'Banana', 'Pear', 'Blueberry', 'Strawberry']
*fruit[0:2]    # Space before starting position : Space before ending position
```

```
['Apple', 'Banana']
```

---
# List Slicing

Using a very similar syntax to previously learned indexing, we can slice a list by providing a start and end position in squared brackets separated by a colon. The slice is returned as a list.

```python
fruit = ['Apple', 'Banana', 'Pear', 'Blueberry', 'Strawberry']
fruit[0:2]
*fruit[1:4]
```

```
['Banana', 'Pear, 'Blueberry']
```

---
# List Slicing

Using a very similar syntax to previously learned indexing, we can slice a list by providing a start and end position in squared brackets separated by a colon. The slice is returned as a list.

```python
fruit = ['Apple', 'Banana', 'Pear', 'Blueberry', 'Strawberry']
fruit[0:2]
fruit[1:4]
```

```
['Banana', 'Pear, 'Blueberry']
```

---
# List Slicing

Using a very similar syntax to previously learned indexing, we can slice a list by providing a start and end position in squared brackets separated by a colon. The slice is returned as a list.

```python
fruit = ['Apple', 'Banana', 'Pear', 'Blueberry', 'Strawberry']
fruit[0:2]
fruit[1:4]
*fruit[1:]    # Ommiting a value from the slice syntax means "till the end"
```

```
['Banana', 'Pear, 'Blueberry', 'Strawberry']
```

---
# List Slicing

Using a very similar syntax to previously learned indexing, we can slice a list by providing a start and end position in squared brackets separated by a colon. The slice is returned as a list.

```python
fruit = ['Apple', 'Banana', 'Pear', 'Blueberry', 'Strawberry']
fruit[0:2]
fruit[1:4]
fruit[1:]
*fruit[:2]    # Omitting can also mean "from the beginning"
```

```
['Apple', 'Banana']
```

---
# List Slicing

Using a very similar syntax to previously learned indexing, we can slice a list by providing a start and end position in squared brackets separated by a colon. The slice is returned as a list.

```python
fruit = ['Apple', 'Banana', 'Pear', 'Blueberry', 'Strawberry']
fruit[0:2]
fruit[1:4]
fruit[1:]
fruit[:2]
*fruit[-3:]    # Negative indexing also works
```

```
['Pear', 'Blueberry', 'Strawberry']
```

---
class: middle

# You probably could have guessed but slicing also works on strings...

![](https://qph.fs.quoracdn.net/main-qimg-a380b1bc159589df5e0b9842e5b56b6d)

---
class: middle

# Exercises

[List Slicing](https://brucepucci.github.io/exercises/list_slicing.html)

---
# The optional skip parameter to slicing.

Not required for the course but you can pass an optional 3rd value in slicing syntax in order to skip elements.

```python
fruit = ['Apple', 'Banana', 'Pear', 'Blueberry', 'Strawberry']
*fruit[0:5:2]    # Skips every other element
```

```
['Apple', 'Pear', 'Strawberry']
```

---
# The optional skip parameter to slicing.

Not required for the course but you can pass an optional 3rd value in slicing syntax in order to skip elements.

```python
fruit = ['Apple', 'Banana', 'Pear', 'Blueberry', 'Strawberry']
fruit[0:5:2]
*fruit[0:5:3]         # Skips every 2 elements
```

```
['Apple', 'Blueberry']
```

---
# The optional skip parameter to slicing.

Not required for the course but you can pass an optional 3rd value in slicing syntax in order to skip elements.

```python
fruit = ['Apple', 'Banana', 'Pear', 'Blueberry', 'Strawberry']
fruit[0:5:2]
*fruit[0:5:3]         # Skips every 2 elements
```

```
['Apple', 'Blueberry']
```

![](https://media.giphy.com/media/3og0IMJcSI8p6hYQXS/giphy.gif)
