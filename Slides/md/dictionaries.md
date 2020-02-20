class: middle, center

# Dictionaries

![](https://image.shutterstock.com/image-photo/large-blue-english-dictionary-isolated-260nw-168552845.jpg)

---
class: middle

# The 2nd container type that we will learn is called a dictionary.

Dictionaries are a mutable data type that store __key-value__ items. They associate a name for their items with a value. This differs from lists in that the data stored in a dictionary is typically not ordered.

In other words, we refer or think of items in dictionaries by their name not by their position.

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
*state_capitals['New York'] = 'Albany'  # Add another key-value pair
*                                      # to state_capitals
```

---

# Creating a Dictionary

We can create a dictionary with the `dict()` keyword or curley brackets, {}.

```python
state_capitals = dict()
state_capitals['OH'] = 'Columbus'
state_capitals['New York'] = 'Albany'
*state_capitals   # What does state_capitals look like?
```

```python
{'OH': 'Columbus', 'New York': 'Albany'}
```

---

# Creating a Dictionary

We can create a dictionary with the `dict()` keyword or curley brackets, {}.

```python
state_capitals = dict()
state_capitals['OH'] = 'Columbus'
state_capitals['New York'] = 'Albany'
*state_capitals['OH']      # We can use a key as an index to a dictionary
*                         # to retreive it's value
```

```python
'Columbus'
```

---

# Creating a Dictionary

Another way to create a dictionary is the curly brackets.

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

