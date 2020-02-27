class: middle, center

# Dictionaries

![](https://image.shutterstock.com/image-photo/large-blue-english-dictionary-isolated-260nw-168552845.jpg)

---
class: middle

# The 2nd container type that we will learn is called a dictionary.

Dictionaries are a mutable data type that store __key-value__ items. They associate a name for their items with a value. This differs from lists in that the data stored in a dictionary is typically not ordered.

In other words, we refer or think of items in dictionaries by their name not by their position.

---
class: middle

# Dictionaries vs Lists

 
Dictionaries utilize something call a "hash table" to keep track of their contents. This allows us to test for inclusion and look up values much quicker than lists. 

[If interested, video on Hash Tables (Not part of this course)](https://www.youtube.com/watch?v=shs0KM3wKv8&t=)

---
class: middle

# Dictionaries vs Lists

There is no "first item" in a dictionary. The order in which items are inserted does not matter. This means you cannot slice a dictionary. 

---
class: middle

# Dictionaries vs Lists

We index based on an items key in the dictionary not on its relative position in the data structure. In a list if we try to access an element that doesn't exist (for example the 9th item in a list 6 items long) we get an "out-of-range" error. If we try to access an element in a dictionary that does not exist we get a "key error".
 
---

# Creating a Dictionary

We can create a dictionary with the `dict()` keyword or curley brackets, {}.

```python
*state_capitals = dict()
```

---

# Creating a Dictionary

We can create a dictionary with the `dict()` keyword or curley brackets, {}.

```python
state_capitals = dict()
*state_capitals['OH'] = 'Columbus'  # Add the item keyed by 'OH' to the
*                                  # state_capitals dictionay with the
*                                  # value 'Columbus'
```
---

# Creating a Dictionary

We can create a dictionary with the `dict()` keyword or curley brackets, {}.

```python
state_capitals = dict()
state_capitals['OH'] = 'Columbus'
*state_capitals['NY'] = 'Albany'  # Add another key-value pair
*                                # to state_capitals
```

---

# Creating a Dictionary

We can create a dictionary with the `dict()` keyword or curley brackets, {}.

```python
state_capitals = dict()
state_capitals['OH'] = 'Columbus'
state_capitals['NY'] = 'Albany'
*state_capitals   # What does state_capitals look like?
```

```python
{'OH': 'Columbus', 'NY': 'Albany'}
```

---

# Creating a Dictionary

We can create a dictionary with the `dict()` keyword or curley brackets, {}.

```python
state_capitals = dict()
state_capitals['OH'] = 'Columbus'
state_capitals['NY'] = 'Albany'
*state_capitals['PA']   # What if we try to look up an non-existant value
```

```python
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
KeyError: 'PA'
```

---

# Creating a Dictionary

Another way to create a dictionary is the curly brackets. This is especially helpful if we know the values that we want to start with in our dictionary.

```python
greek_letters = {
    'a': 'alpha',
    'o': 'omega',
    'g': 'gamma'
}
```

```python
{'a': 'alpha', 'o': 'omega', 'g': 'gamma'}
```

![](https://developers.google.com/edu/python/images/dict.png)

---

# Creating a Dictionary

One more (more complicated way) is to have the `dict()` keyword consume 2 iterables of the asme length zipped together.

```python
*small_version = ['a', 'o', 'g']                 # create 2 lists
*long_version = ['alpha', 'omega', 'gamma']
```

---

# Creating a Dictionary

One more (more complicated way) is to have the `dict()` keyword consume 2 iterables of the asme length zipped together.

```python
small_version = ['a', 'o', 'g']
long_version = ['alpha', 'omega', 'gamma']

*zip(small_version, long_version)     # Remember zip is lazily evaluated
```

```python
<zip object at 0x1082de370>
```

---

# Creating a Dictionary

One more (more complicated way) is to have the `dict()` keyword consume 2 iterables of the asme length zipped together.

```python
small_version = ['a', 'o', 'g']
long_version = ['alpha', 'omega', 'gamma']

zipped = zip(small_version, long_version)
*list(zipped)    # It would look like a list of tuples if we wrapped it with list
```

```python
[('a', 'alpha'), ('o', 'omega'), ('g', 'gamma')]
```

---

# Creating a Dictionary

One more (more complicated way) is to have the `dict()` keyword consume 2 iterables of the asme length zipped together.

```python
small_version = ['a', 'o', 'g']
long_version = ['alpha', 'omega', 'gamma']

zipped = zip(small_version, long_version)
*dict(zipped)      # But if we wrap it with dict() we get the dictionary we want
```

```python
{'a': 'alpha', 'o': 'omega', 'g': 'gamma'}
```
---

# Testing for inclusion in a dictionary

Just like lists Python provides a convienient way to see if a key is included in a dictionary.

```python
*my_list = ['a', 'b', 'c']
*'c' in my_list     # See if a value is in my_list
```

```python
True
```

---

# Testing for inclusion in a dictionary

Just like lists Python provides a convienient way to see if a key is included in a dictionary.

```python
my_dictionary = {'a': 1, 'b': 2, 'c': 3}
my_var = 'a'
my_var in my_dictionary      # See if the key 'a' is in my dictionary
```

```python
True
```

---

# Testing for inclusion in a dictionary

Just like lists Python provides a convienient way to see if a key is included in a dictionary.

```python
my_dictionary = {'a': 1, 'b': 2, 'c': 3}
my_var = 'a'
my_var not in my_dictionary      # Same thing for not
```

```python
False
```

---

# Testing for inclusion in a dictionary

Just like lists Python provides a convienient way to see if a key is included in a dictionary.

```python
my_dictionary = {'a': 1, 'b': 2, 'c': 3}
my_var = 'a'
*if my_var in my_dictionary:        # Does 'a' already exist?
*    print(my_dictionary[my_var])   # If it does print it's value
```

```python
1
```

---

# Testing for inclusion in a dictionary

Just like lists Python provides a convienient way to see if a key is included in a dictionary.

```python
my_dictionary = {'a': 1, 'b': 2, 'c': 3}
my_var = 'a'
if my_var in my_dictionary:
    print(my_dictionary[my_var])
*else:                      # If a is not in the list let us know gracefully
*    print(my_var + ' is not in the dictionary')
```

```python
1
```

---

# Testing for inclusion in a dictionary

Just like lists Python provides a convienient way to see if a key is included in a dictionary.

```python
my_dictionary = {'a': 1, 'b': 2, 'c': 3}
*my_var = 'd'     now look for d
if my_var in my_dictionary:
    print(my_dictionary[my_var])
else:
    print(my_var + ' is not in the dictionary')
```

```python
'd is not in the dictionary'
```

---

# Testing for inclusion in a dictionary

Just like lists Python provides a convienient way to see if a key is included in a dictionary.

```python
my_dictionary = {'a': 1, 'b': 2, 'c': 3}
my_var = 'd'
*print(my_dictionary[my_var])       # Without the if statement
```

```python
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
KeyError: 'd'
```

![](https://image.shutterstock.com/image-vector/word-ouch-vintage-comic-speech-260nw-1349215577.jpg)

---
class: middle

# Dictionary Methods

Just like lists dictionaries have methods that belong to the data types. We can call any of these methods on any instance of the dictionary class.

Some methods of dictionaries
* get()
	* Returns the value of the specified key
* items()
	* Returns a list containing a tuple for each key value pair
* keys()
	* Returns a list containing the dictionary's keys
* values()
	* Returns a list of all the values in the dictionary

We're gonna cover these but there are more than this. You'll never remember then, I certainly don't. This is why we Google.

---

# The `get()` method

The `get()` method is just like using squared brackets, except it is a method that belongs to the dictionary itself. One of it's biggest benefits is being able to provide a default value if the key doesn't exist in the dictionary

```python
my_dictionary = {'a': 1, 'b': 2, 'c': 3}
my_var = 'd
*my_dictionary.get(my_var, -1)
```

```python
-1
```

---
# Keys, Values, and Items

The `keys()`, `values()`, and `items()` methods are very similar. They return either all the keys, all the values, or all of the both keys and values in the form of a list.

```python
*my_dictionary = {'a': 1, 'b': 2, 'c': 3}     # create a dictionary
```

---
# Keys, Values, and Items

The `keys()`, `values()`, and `items()` methods are very similar. They return either all the keys, all the values, or all of the both keys and values in the form of a list.

```python
my_dictionary = {'a': 1, 'b': 2, 'c': 3}
*my_dictionary.keys()    # Keys as a list
```

```python
['a', 'b', 'c']
```
---
# Keys, Values, and Items

The `keys()`, `values()`, and `items()` methods are very similar. They return either all the keys, all the values, or all of the both keys and values in the form of a list.

```python
my_dictionary = {'a': 1, 'b': 2, 'c': 3}
*my_dictionary.values()    # Values as a list
```

```python
[1, 2, 3]
```

---
# Keys, Values, and Items

The `keys()`, `values()`, and `items()` methods are very similar. They return either all the keys, all the values, or all of the both keys and values in the form of a list.

```python
my_dictionary = {'a': 1, 'b': 2, 'c': 3}
*my_dictionary.items()    # (key, value) pairs as a tuple
```

```python
[('a', 1), ('b', 2), ('c', 3)]
```

---

# Dictionaries and for loops

If you loop through a dictionary you will be looping through the keys of the dictionary. It's the same syntax as for loops and lists.

```python
my_dictionary = {'a': 1, 'b': 2, 'c': 3}

*for item in my_dictionary:      # Loop through the dictionary
*    print(item)                 # Print the key
```

```python
'a'
'b'
'c'
```

---

# Dictionaries and for loops

If you loop through a dictionary you will be looping through the keys of the dictionary. It's the same syntax as for loops and lists.

```python
my_dictionary = {'a': 1, 'b': 2, 'c': 3}

*for item in my_dictionary:
*    print(my_dictionary[item])   # Look up the value of eack key in a dictionary
```

```python
1
2
3
```
---

# Dictionaries and for loops

If you loop through a dictionary you will be looping through the keys of the dictionary. It's the same syntax as for loops and lists.

```python
my_dictionary = {'a': 1, 'b': 2, 'c': 3}

*for item in my_dictionary:
*    print('The key is ' + item)     # Maybe we want to use both?
*    print('The value is ' + my_dictionary[item])
```

```python
The key is a
The value is 1
The key is b
The value is 2
The key is c
The value is 3
```

---
class: middle

# Tuple Unpacking

If we have a tuple we can unpack it into 2 variables when the variables are seperated by a comma.


```python
a, b = (1, 2)
print(a)
print(b)
```

```python
1
2
```

---

# Dictionaries and for loops

If you loop through a dictionary you will be looping through the keys of the dictionary. It's the same syntax as for loops and lists.

```python
my_dictionary = {'a': 1, 'b': 2, 'c': 3}

*for key, value in my_dictionary.items():    # Unpack items into key, value
*    print('The key is ' + key)
*    print('The value is ' + value)
```

```python
The key is a
The value is 1
The key is b
The value is 2
The key is c
The value is 3
```

---
class: middle

NBA MVPs

* Who was the youngest MVP?
* Who was the oldest MVP?
* Which player has the most MVPs?
* Which team has the most MVPs?
* Who is the MVP with the longest name?

[NBA MVPs](https://brucepucci.github.io/exercises/nba_mvps.html)
Add after class
---
