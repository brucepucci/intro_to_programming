class: middle

# Lists

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

---
class: middle

# List Mutability

As discussed before lists are __mutable__, meaning we can change their value after they are created. There are a number of way in which we can do this. In general, there are 2 ways in which this happens.

* We can directly index or slice elements and assign values to them.
	* The previously existing value gets overwritten.
* Use list __methods__ to change a list __in-place__.
	* No assignment operator is needed for this.

---
# Changing values in a list

We can slice or index our list and directly assign a value (or group of values) to it.

```python
my_list = ['a', 'd', 'c']
```

```python
['a', 'd', 'c']
```

---
# Changing values in a list

We can slice or index our list and directly assign a value (or group of values) to it.

```python
my_list = ['a', 'd', 'c']
*my_list[1] = 'b'    # Change the second element to 'b'
```

```python
['a', 'b', 'c']
```

---
# Changing values in a list

We can slice or index our list and directly assign a value (or group of values) to it.

```python
my_list = ['a', 'd', 'c']
*my_list[1:] = ['b', 'd']    # Change last 2 items using slice syntax
```

```python
['a', 'b', 'd']
```

---
# Changing values in a list

We can slice or index our list and directly assign a value (or group of values) to it.

```python
my_list = ['a', 'd', 'c']
my_list[1] = 'b'
*my_list[3] = 'l'    # Cannot add an element to the end of our list like this
```

```python
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
IndexError: list assignment index out of range
```

---
# Changing values in a list

We can slice or index our list and directly assign a value (or group of values) to it.

```python
my_list = ['a', 'd', 'c']
my_list[1] = 'b'
*my_list[2] = [1, 2, 3]    # We can change the item to anything we want.
```

```python
['a', 'b', [1, 2, 3]]
```

---
# Changing values in a list

We can slice or index our list and directly assign a value (or group of values) to it.

```python
my_list = ['a', 'd', 'c']
my_list[1] = 'b'
my_list[2] = [1, 2, 3]
*my_list[2][0] = [4, 5, 6]   # it works for lists in lists as well
```

```python
['a', 'b', [[4, 5, 6], 2, 3]]
```

---
# Changing values in a list

We can slice or index our list and directly assign a value (or group of values) to it.

```python
my_list = ['a', 'd', 'c']
my_list[1] = 'b'
my_list[2] = [1, 2, 3]
my_list[2][0] = [4, 5, 6]
*del my_list[2]   # The del keyword deletes (technically dereferences) a Python object
```

```python
['a', 'b']
```

---
# Changing values in a list

We can slice or index our list and directly assign a value (or group of values) to it.

```python
my_list = ['a', 'd', 'c']
my_list[1] = 'b'
my_list[2] = [1, 2, 3]
my_list[2][0] = [4, 5, 6]
del my_list[2]
*del my_list   # We can even delete the whole darn thing
```

```python
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
NameError: name 'my_list' is not defined
```

---
class: middle

# The `del` keyword and object dereferencing

In Python we say that a variable references a value. When we use `del` on a variable we __dereference__ that value from the variable. During this process we also remove the variable name from our namespace.

Python occasionally looks around for values with no references and deletes from memory. This process is called "garbage collections".
---

class: middle

# Exercises

[Changing List Values](https://brucepucci.github.io/exercises/changing_list_values.html)

---
class: middle

# OK, so the next bit of the presentation takes no logical order. It's kind of just a random walk through useful list operations...

---
# Testing for inclusion

We can test for a value's inclusion in an object with the keyword `in`.

```python
my_list = [1, 2, 3, 4, 5]
*2 in my_list
```

```python
True
```

---
# Testing for inclusion

We can test for a value's inclusion in an object with the keyword `in`.

```python
my_list = [1, 2, 3, 4, 5]
*5 not in my_list   # `not` in from of `in` reverses the return value
```

```python
False
```

---
class: middle

# Sorting

Sorting is a fundamental piece of any programming class. We probably won't go into the algorithm of how a language sorts values but we will cover the actual implementation of it in Python and how to use it.

To sort something is to rearrange a given array or list elements according to a comparison operator on the elements.

i.e. If `my_list` is a sorted list then you are guarenteed that any value in a list will be <= the value the comes after it.

---
class: middle

# Sorting

For numbers it is obvious how this works. How about for strings?

`sorted()` sorts character by character based on their ASCII values. If interested see the ASCII table [here](https://www.researchgate.net/profile/Firas_Jassim2/publication/244989821/figure/tbl1/AS:669549728907274@1536644503556/The-most-95-common-ASCII-characters.png).

How could we test if a string would be sorted before another?

---
# Sorting a list

`sorted()` is a built-in function that works on a variety of data types, but is especially useful for `list`. `sorted()` returns a copy of the list given to it with a potential different order.


```python
my_list = [5, 1, 4, 2, 9]
*my_list = sorted(my_list)   # Does not change my_list, just returns a sorted copy of it
```

```python
[1, 2, 4, 5, 9]
```

---
# Sorting a list

`sorted()` is a built-in function that works on a variety of data types, but is especially useful for `list`. `sorted()` returns a copy of the list given to it with a potential different order.


```python
my_list = ['c', 'd', 'a', '5', 'A']
*my_list = sorted(my_list)      # Works on strings too... But how?
```

```python
['5', 'A', 'a', 'c', 'd']
```

---
# Sorting a list

`sorted()` is a built-in function that works on a variety of data types, but is especially useful for `list`. `sorted()` returns a copy of the list given to it with a potential different order.


```python
my_list = ['c', 'd', 'a', '5', 'A']
*my_list = sorted(my_list)      # Works on strings too... But how?
```

```python
['5', 'A', 'a', 'c', 'd']
```


---
# Sorting a list

`sorted()` is a built-in function that works on a variety of data types, but is especially useful for `list`. `sorted()` returns a copy of the list given to it with a potential different order.


```python
my_list = ['Apple', 'aapl', 'apple', 'APPLE', 'APPLES']
*my_list = sorted(my_list)      # Character-by-character
```

```python
['APPLE', 'APPLES', 'Apple', 'aapl', 'apple']
```

---
# Sorting a list

`sorted()` is a built-in function that works on a variety of data types, but is especially useful for `list`. `sorted()` returns a copy of the list given to it with a potential different order.


```python
my_list = ['c', 'd', 'a', '5', 'A']
*my_list[0] = 12      # Change to an integer
*my_list = sorted(my_list)      # Breaks when types aren't the same
```

```python
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
TypeError: '<' not supported between instances of 'int' and 'str'
```

---
# Sorting a list

`sorted()` is a built-in function that works on a variety of data types, but is especially useful for `list`. `sorted()` returns a copy of the list given to it with a potential different order.


```python
*sorted('fdfdasfgthgafd')    # Works on strings too
```

```python
['a', 'a', 'd', 'd', 'd', 'f', 'f', 'f', 'f', 'g', 'g', 'h', 's', 't']
```

---
class: middle

# In-place operations

All of the operations we've seen thus far have simply just replaced the values inside of a variable with another value. They've never actually "changed" something that belongs to the variable we are working on. These types of operations are far more common.

It is possible for vairables to be changed "in-place". Lists are going to be a good example of this. For many operations we do not need to use the assignment operator, we chan simply just tell a list to change itself via aforementioned __methods__.

---
# Methods

A __method__ is kind of like a function, except it belongs to an __instance__ of a class instead of the language as a whole.

```python
*my_list = list()    # my_list is an instance of the list class
```

---
# Methods

A __method__ is kind of like a function, except it belongs to an __instance__ of a class instead of the language as a whole. Methods take inputs called __arguments__.

Go [here](https://docs.python.org/3/tutorial/datastructures.html) to see a complete list of methods and expected arguments for each in the list class.

An example looks like this...

`list.append(x)`
Add an item to the end of the `list`. `Equivalent to a[len(a):] = [x].`

---
# Methods

A __method__ is kind of like a function, except it belongs to an __instance__ of a class instead of the language as a whole. Methods take inputs called __arguments__.

```python
my_list = list()
my_list.append(123) # `append()` is a method of the list class
                    # Thusly, my_list can call append
                    # The value 123 is the first argument to the append method
```

---
# Sorting a list

`sort` is a method of the list class. It sorts, just like sorted, but does so "in-place"


```python
my_list = ['c', 'd', 'a', '5', 'A']
*my_list.sort()     # No assignment operator needed!
*my_list
```

```python
['5', 'A', 'a', 'c', 'd']
```

---
class: middle

# Other list methods

There are quite a few list methods. We're going to step into the following...

* `list.append()` - Add an item to the end of a list
* `list.insert()` - Add an item to a specified location in a list
* `list.remove()` - Remove the first item of a given value from a list
* `list.reverse()`- Reverses the elements in a list
* `list.index()`  - Return the index of the first item of a given value from a list
* `list.count()`  - Count the number of times a value is in a list
* `list.pop()`    - Remove and return a value from a list (Default to last element)

---
# Append

`list.append(x)`
Add an item to the end of the list. Equivalent to `a[len(a):] = [x]`.

Probably the most commonly used list method. The argument `x` can be of any type.

```python
my_list = []
*my_list.append('abc')
*my_list.append('def')
*my_list.append([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
my_list
```

```python
['abc', 'def', [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]]
```

---
# Insert

`list.insert(i, x)`
Insert an item at a given position. The first argument is the index of the element before which to insert, so `a.insert(0, x)` inserts at the front of the list, and `a.insert(len(a), x)` is equivalent to a.append(x).

Insert has 2 required arguments.


```python
my_list = []
my_list.append('abc')
my_list.append('def')
*my_list.insert(1, 'ghi') # The index of the item we want to place an item before
*                        # is the first argument and the value of the item
*                        # we want to insert is the second.
my_list
```

```python
['abc', 'ghi', 'def']
```

---
# Remove

`list.remove(x)`
Remove the first item from the list whose value is equal to x. It raises a ValueError if there is no such item.

Be careful here. It only removes the first item it finds equal to the value you pass it. Not all of them



```python
my_list = []
my_list.append('abc')
my_list.append('def')
my_list.insert(1, 'ghi')
*my_list.remove('def')
my_list
```

```python
['abc', 'ghi']
```

---
# Reverse

`list.reverse()`
Reverse the elements of the list in place.

Only reverses top level items. Will not reverse a list inside of a list.

```python
my_list = []
my_list.append('abc')
my_list.append('def')
my_list.insert(1, 'ghi')
*my_list.reverse()
my_list
```

```python
['def', 'ghi', 'abc']
```

---
# Index

`list.index(x[, start[, end]])`
Return zero-based index in the list of the first item whose value is equal to x. Raises a ValueError if there is no such item.

This is a little different than the other list methods in that it returns a value rather than mutating the list.


```python
my_list = []
my_list.append('abc')
my_list.append('def')
my_list.insert(1, 'ghi')
my_list.remove('def')
my_list.append('abc')
*my_list.index('abc')    # Returns the index of the first time `abc` occurs
```

```python
0
```

---
# Count

`list.count(x)`
Return the number of times x appears in the list.

Also returns a value instead of mutating.

```python
my_list = []
my_list.append('abc')
my_list.append('def')
my_list.insert(1, 'ghi')
my_list.append('abc')
*my_list.count('abc')
```

```python
2
```

---
# Pop

list.pop([i])
Remove the item at the given position in the list, and return it. If no index is specified, a.pop() removes and returns the last item in the list. (The square brackets around the i in the method signature denote that the parameter is optional)

Does both return a value and mutate the list. Also, optional arguments are new.

```python
my_list = []
my_list.append('abc')
my_list.append('def')
my_list.insert(1, 'ghi')
my_list.append('abc')
*last_item = my_list.pop()    # pops 'abc' off the back of the list
*                            # and assigns it to variable last_item
last_item
```

```python
'abc'
```

---
class: middle

# Exercises

[List Methods](https://brucepucci.github.io/exercises/list_methods.html)

---
class: middle

# Built-In Functions for Lists

We've seen these before but there are a few built-in functions that work on lists. They all return a value. Here are a few of them...

* `len(my_list)` - Number of elements in my_list
* `min(my_list)` - Minimum value elements in my_list
* `max(my_list)` - Maximum value elements in my_list
* `sum(my_list)` - Sum of all elements in my_list (Numerics only)
* `any(my_list)` - `True` if __any__ element in my_list is `True`
* `all(my_list)` - `True` if __all__ elements in my_list are `True`

---
class: middle

# Exercises

[List Built-Ins](https://brucepucci.github.io/exercises/list_built_ins.html)

---
class: middle

# The `for` Loop

We've already learned 1 looping construct, the `while` loop. The `for` loop is similar in that it that it repeats a block of code at least once but differs in how it does so.

A `for` loop consumes an iterable, temporarily assigns each item to a variable, then runs a code block.

The syntax is as follows...
	1. The `for` keyword
	2. A variable name to use in your code block
	3. The `in` keyword
	4. The iterable you want to loop through
	5. A semi-colon
	6. A code block
	
```python
for i in [0, 1, 2, 3, 4, 5]:
	print(i)
```

---
class: middle

# Looping through a list --- while vs for
	
```python
my_list = [0, 1, 2, 3, 4, 5]

i = 0
while i < len(my_list):
	do_something(my_list[i])
	i += 1
```

```python
my_list = [0, 1, 2, 3, 4, 5]

for i in my_list:
	do_something(i)
```
	
while - loop until a condition is not met
for - loop through an iterable item by item until exhausted

For loops are much more intuitive. So, pretty much never (with few exceptions) use `while` again.

---
class: middle

# The [Range](https://docs.python.org/3/library/stdtypes.html#typesseq-range) Class

The `range` class provides a convenient way of returning a iterable of consecutive numbers. This is what can replace creating a variable like `i` in a while look and manually incrementing it.

Range has 2 forms...

1) range(stop) - Returns an iterable with the integers starting at 0 and stopping before the argument passed to stop.
2) range(start, stop) - Returns an iterable with the integers starting at the integer passed as start and stopping before the argument passed to stop.
	- There is an optional 3rd argument you can pass here called skip which can optionally skip over elements in the range
	
```python
*list(range(10))
```
```python
[0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
```

---
class: middle

# The [Range](https://docs.python.org/3/library/stdtypes.html#typesseq-range) Class

The `range` class provides a convenient way of returning a iterable of consecutive numbers. This is what can replace creating a variable like `i` in a while look and manually incrementing it.

Range has 2 forms...

1) range(stop) - Returns an iterable with the integers starting at 0 and stopping before the argument passed to stop.
2) range(start, stop) - Returns an iterable with the integers starting at the integer passed as start and stopping before the argument passed to stop.
	- There is an optional 3rd argument you can pass here called skip which can optionally skip over elements in the range
	
```python
*list(range(1, 11))
```
```python
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
```

---
class: middle

# Range and for loops

We can just throw range as the iterable in for if we want to loop over some integers.

```python
for i in range(3):
	print(i)
```

```
0
1
2
```

---
class: middle

# The [Range](https://docs.python.org/3/library/stdtypes.html#typesseq-range) Class

The `range` class provides a convenient way of returning a iterable of consecutive numbers. This is what can replace creating a variable like `i` in a while look and manually incrementing it.

Range has 2 forms...

1) range(stop) - Returns an iterable with the integers starting at 0 and stopping before the argument passed to stop.
2) range(start, stop) - Returns an iterable with the integers starting at the integer passed as start and stopping before the argument passed to stop.
	- There is an optional 3rd argument you can pass here called skip which can optionally skip over elements in the range
	
```python
*list(range(0, 30, 5))
```
```python
[0, 5, 10, 15, 20, 25]
```

---
class: middle

# Exercise

Return the max value from a list

then

Return the index of the max value in a list

[Max Value In List](https://brucepucci.github.io/exercises/max_value_list.html)

---
class: middle

# Exercise

Write a program that takes 2 lists and returns True if they have at least 1 member in common.

[Member In Common?](https://brucepucci.github.io/exercises/member_in_common.html)
	
---
class: middle

# Some iterables are considered to be evaluated __lazily__.

Some iterables that are created in Python are evaluated __lazily__. Meaning the iterable is not fully constructed when it is created but it will rather provide items 1 at a time when asked for. An iterator that is evaluated lazily is called a __generator__ because it generates the next value in the iterable rater than just look it up.

Some examples of built-ins that return a generator are...
* zip
* enumerate
* reversed

---

# Lazy vs Eager Evaluation

Lazy evaluation is when values are constructed on the fly rather than creating all of the values in the beginning then looking them up later.

```python
*a = reversed(range(10))    # creating a generator with reversed from the range built-in
```

---

# Lazy vs Eager Evaluation

Lazy evaluation is when values are constructed on the fly rather than creating all of the values in the beginning then looking them up later.

```python
a = reversed(range(10))
*a     # what is in a?
```

```
<range_iterator object at 0x10ec7bc60>
```

---

# Lazy vs Eager Evaluation

Lazy evaluation is when values are constructed on the fly rather than creating all of the values in the beginning then looking them up later.

```python
a = range(10)
*type(a)      # range is not a list
```

```
<class 'range_iterator'>
```
---

# Lazy vs Eager Evaluation

Lazy evaluation is when values are constructed on the fly rather than creating all of the values in the beginning then looking them up later.

```python
a = reversed(range(10))
*a[2]    # Because a is a generator we don't know what will be in an element that hasn't yet been generated
```

```
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
TypeError: 'range_iterator' object is not subscriptable
```
---

# Lazy vs Eager Evaluation

Lazy evaluation is when values are constructed on the fly rather than creating all of the values in the beginning then looking them up later.

```python
a = reversed(range(10))
*list(a)    # We can wrap `a` with the list built in and it will exhaust
*          # the generator of its values and store them in a list
```

```
[9, 8, 7, 6, 5, 4, 3, 2, 1, 0]
```

---

# Lazy vs Eager Evaluation

Lazy evaluation is when values are constructed on the fly rather than creating all of the values in the beginning then looking them up later.

```python
a = reversed(range(10))
*print(next(a))    # We can also just ask for the next value with the `next` function
*print(next(a))    # Asking again...
*print(next(a))    # And again...
```

```
9
8
7
```

---

# Lazy vs Eager Evaluation

Lazy evaluation is when values are constructed on the fly rather than creating all of the values in the beginning then looking them up later.

```python
a = range(10)
print(next(a))    # We can also just ask for the next value with the `next` function
print(next(a))    # Asking again...
print(next(a))    # And again...
.
.
.
print(next(a))
print(next(a))   # What happens when our generator runs out of values?
```

```
9
8
7
.
.
.
1
0
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
StopIteration
  
```

---
class: middle

# Pros and Cons of Lazy vs Eager Evaluation

---
class: middle

# Tuples

Tuples are a data type in Python that closely resemble the list. However, they are not mutable.These can be used for rigid record keeping, for example we know a table might always have 8 columns so each row in that table might be represented by a tuple of length 8.

Tuples are denoted by parenthesis or the `tuple()` built-in and follow the same slicing and indexing rules as Python.

```python
my_tuple = (1, 2, 3)
*my_tuple[1] = 4
```

```python
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
TypeError: 'tuple' object does not support item assignment
```

---
class: middle

# Tuples

Tuples are a data type in Python that closely resemble the list. However, they are not mutable.These can be used for rigid record keeping, for example we know a table might always have 8 columns so each row in that table might be represented by a tuple of length 8.

Tuples are denoted by parenthesis or the `tuple()` built-in and follow the same slicing and indexing rules as Python.

```python
my_tuple = (1, 2, 3)
*my_tuple.append(4)
```

```python
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
AttributeError: 'tuple' object has no attribute 'append'
```

---
class: middle

# The `zip` function

You can use zip to associate corresponding elements of 2 lists with one another. Zip returns a generator of tuples.

```python
letters = ['a', 'b', 'c', 'd']
numbers = [1, 2, 3, 4]

letters_and_numbers = zip(letters, numbers)
next(letters_and_numbers)
```

```python
('a', 1)
```

---
class: middle

# The `enumerate` function

You can use `enumerate` to zip the index of a list to it's value. ennumerate returns a tuple of length 2.

```python
letters = ['a', 'b', 'c', 'd']
idx_letters = enumerate(letters)
print(next(idx_letters))
print(next(idx_letters))
```

```python
(0, 'a')
(1, 'b')
```

---
class: middle

# Exercise

Write a program to get the element by element difference between the two lists.

Ie subract each element from the seocnd list from each element of the first list.

[Difference In Lists](https://brucepucci.github.io/exercises/difference_in_lists.html)

---
class: middle

# Exercise

Return all the indexes in a list who's values contain a string

[Find the Strings](https://brucepucci.github.io/exercises/find_the_strings.html)

