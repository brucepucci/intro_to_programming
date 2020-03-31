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
*f'The min of the list above is {min(my_list)}'
```

```
'The min of the list above is -2'
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

Back when we looked at lists and dictionaries we learned about methods. Methods are kind of like functions but they belong to a specific class, or data type. You use the object itself to access it's methods through the "dot operator".

There are quite a few string methods. We are going to cover a few of them but you can find them all [here](https://docs.python.org/2.5/lib/string-methods.html).

All string methods return a value and do not change the underlying string because strings are **immutable**. This is as opposed to some string and dictionary methods who's methods mutated the object you were working on.

---
class: middle

# Substring Find

To find the location of a substring you can use the `find` method. It returns the index of the first character of the first occurance of your desired substring.

```python
my_string = 'I ran 0.2 miles last week.'
my_substring = '0.2'
*my_string.find(my_substring)
```

```
6
```

---
class: middle

# Starts With & Ends With Methods

* `str.startswith(substr)` - `True` if str begins with substr
* `str.endswith(substr)` - `True` if str ends with substr

```python
substr = 'all.'
my_string = 'I don\'t know anything at all.'

my_string.startswith(substr)
my_string.endswith(substr)
```
```
False
True
```

---
class: middle

# Case Methods

* `str.upper()` - Convert the entire string to upper case
* `str.lower()` - Convert the entire string to lower case
* `str.title()` - Convert the first letter of every word to upper case
* `str.capitalize()` - Convert the first letter of the string to upper case

```python
'what is wrong with you'.upper()
```

```
'WHAT IS WRONG WITH YOU'
```

---
class: middle

# Is Methods

* `str.isupper()` - `True` if all characters are upper case
* `str.islower()` - `True` if all characters are lower case
* `str.isspace()` - `True` if all characters are whitespace
* `str.isalpha()` - `True` if all characters are alphabetic
* `str.isdigit()` - `True` if all characters are integers

```python
'123342.21312'.isdigit()
'12334221312'.isdigit()
```
```
False
True
```

---
class: middle

# Whitespace are characters that exist and are printable but have no character representing them.

Examples inclde scapces (' '), tabs ('\t') and new lines ('\n'). Strings with whitespace are NOT empty.

```python
''       # Empty string, eval to False
'      ' # Non-Empty string, eval to True
```

---
class: middle

# Strip Methods

* `str.rstrip()` - Remove all whitespace from the end of a string
* `str.lstrip()` - Remove all whitespace from the beginning of a string
* `str.strip()` - Remove all whitespace from the beginning & end of a string

```python
'     Oh, no. I added too much whitespace.'.lstrip()
```

```
'Oh, no. I added too much whitespace.'
```

---
class: middle

# Split and Join Methods

These are probably to 2 most useful string methods. We use them to interchange lists of strings to a single string and a single string into a list of strings.

### Split

We use the split method on a string and it takes a string as a prameter. It splits the string on each instance of the argument you pass and returns the result as a list. The item that splits the string is called the **delimiter**.

```python
my_students = 'student_a,student_b,student_c,student_d'
my_students.split(',')
```

```
['student_a', 'student_b', 'student_c', 'student_d']
```

---
class: middle

# Split and Join Methods

These are probably to 2 most useful string methods. We use them to interchange lists of strings to a single string and a single string into a list of strings.

### Join

Join is kind of the opposite of split. It takes a list of strings as an argument and puts the string you called the method on between each occurance.

```python
my_students = ['student_a', 'student_b', 'student_c', 'student_d']
delimiter = ','
delimiter.join(my_students)
```

```
'student_a,student_b,student_c,student_d'
```

---
class: middle

# Exercises

---
class: middle

# Next Class Lead In

There is a much more powerful but much more complicated way of seaching and altering strigs called **regular expressions**. We're spend a small amount of time on very basic **regex** expressions, then get into dealing with files.