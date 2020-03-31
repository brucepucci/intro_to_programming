class: middle, center

# Strings

![](https://lerner.co.il/wp-content/uploads/2018/07/string_shutterstock.jpg)

---
class: middle

# We already know quite a bit about the str data type.

* Sequence of characters
* Start and end with either " or '
* Multi-line string start and end with either """ or '''
* [Special characters](https://brucepucci.github.io/images/escape_characters.png) are escaped with a forward slash (\\)
* Iterable
    * Slice-able
    * Index-able
    * For loop-able
    * len()-able
* `+` and `*` operator work

---
class: middle

# Exercises

* Convert the integer 42 to a string
* Use an escape character to put a single quote in a sting
* Use an index the last character in the string "CWRU" in 2 different ways
* Slide the string "Case Western Reserve University" to just return "Case"
* Put the strings "Case", "Western", "Reserve", "University" together to read "Case Western Reserve University"

---
class: middle

# Character Encodings

A **character encoding** is a set of rules to represent a set of characters on a computer. It's how a computer turns bytes (1s and 0s) into an agreed upon set of symbols (letters, numbers, emojii, etc).

---
class: middle

# Character Encodings

2 encodings we should know at this point...

* ASCII - Small set of characters (128) that will work on any operating system in any programming language, antiquated but reliable

* UTF-8 - Has the ability to support millions of characters; think emojii, greek letters, Chinese characters, etc. Python supports UTF-8 by default. It's the de-facto agreed upon modern standard.

The UTF-8 character set is what defined valid characters in Python 3 meaning you can use any of those characters in your strings.

---
class: middle

# Format Strings

Format strings are new to Python and are super handy. If you precede any string with the character `f` you can use Python code to fill-in in string **placeholders**. You put the Python piece of the string inside of curly brackets, `{}`. It maintains the same scope that the string is created in.

```python
*'This is a regular string'
```

```
'This is a regular string'
```

---
class: middle

# Format Strings

Format strings are new to Python and are super handy. If you precede any string with the character `f` you can use Python code to fill-in in string **placeholders**. You put the Python piece of the string inside of curly brackets, `{}`. It maintains the same scope that the string is created in.

```python
*adjective = 'old'
*'This is the %s way of formatting' % (adjective)
```

```
'This is the old way of formatting'
```

---
class: middle

# Format Strings

Format strings are new to Python and are super handy. If you precede any string with the character `f` you can use Python code to fill-in in string **placeholders**. You put the Python piece of the string inside of curly brackets, `{}`. It maintains the same scope that the string is created in.

```python
*adjective = 'new'
*f'This is the {adjective} way of formatting'
```

```
'This is the new way of formatting'
```

---
class: middle

# Format Strings

Format strings are new to Python and are super handy. If you precede any string with the character `f` you can use Python code to fill-in in string **placeholders**. You put the Python piece of the string inside of curly brackets, `{}`. It maintains the same scope that the string is created in.

```python
*my_list = [1, 12, 10, -2]
*f'Any Python code will work in those curly brackets, even calculations. For example, the min of the list above is {min(my_list)}'
```

```
'Any Python code will work in those curly brackets, even calculations. For example, the min of the list above is -2'
```

---
class: middle

# Substring Inclusion

A substring is a slice of a larger string. For example, "My friend Jimmy" would be a substring of "My friend Jimmy Fallon." You can test for substring inclusion with the `in` keyword, just like you would test for inclusion with other iterables.

```python
print('App' in 'Apple')
print('app' in 'Apple')
```

```
True
False
```

---
class: middle

# String Methods

A substring is a slice of a larger string. For example, "My friend Jimmy" would be a substring of "My friend Jimmy Fallon." You can test for substring inclusion with the `in` keyword, just like you would test for inclusion with other iterables.

```python
print('App' in 'Apple')
print('app' in 'Apple')
```

```
True
False
```
