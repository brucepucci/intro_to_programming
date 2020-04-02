class: middle, center

# Files

![](https://blog.laplink.com/wp-content/uploads/2015/07/file-transfer.png)

---
class: middle

# The Python Standard Library

While Python ships with many "built-in" functions it falls well short of what is needed to build something useful. Python maintains this idea of being **batteries included** so it ships with a whole lot of code that you can use to make your life easier. They ship in modules called ***libraries***, although the terms module and library can be used interchangeably. There are over 200 of them here are some of the most useful...

* `os` - Dealing with the operating system
* `re` - Writing and executing regular expressions
* `datetime` - Dealing with dates, time, timezones, etc
* `math` - Math functions
* `csv` - Reading and writing csv files
* `json` - Reading and writing json files

---
class: middle

# The Python Standard Library vs PIP

While there are hundreds of libraries in the Python standard library there are tens of thousands of libraries in the Python package installer, known as PIP. The PIP and the standard library differ in the following ways...

* PIP packages need to be installed by the user, standard library libraries come with Python
* Standard Library libraries are maintained by the Python Software Foundation and PIP libraries are maintained by a 3rd parties
* Standard Library packages are well tested and well documented on the Python website and PIP package reliability, testing and  documentation is up to the third party developers.

---
class: middle

# Importing a Python Library

Importing a library is dead simple in Python.

```python
import time            # Bring in the time module
```

Each library is simply some Python code that you can use, they can ship with classes, functions, variables, etc for you to use as you wish. Accessing components of these libraries is done with the **dot operator**.

```python
time.localtime()   # Call the localtime function
```
```
time.struct_time(tm_year=2020, tm_mon=4, tm_mday=2, tm_hour=14, tm_min=20, tm_sec=56, tm_wday=3, tm_yday=93, tm_isdst=0)
```

---
class: middle

# Importing a Python Library

If for some reason you only want a piece of a particular library you can use the from syntax.

```python
from time import localtime            # Bring in just the localtime function
```

You no longer need the dot operator to get into the time module. In fact, the time module isn't even addressable using this for of importing.

```python
localtime()   # Call the localtime function
```
```
time.struct_time(tm_year=2020, tm_mon=4, tm_mday=2, tm_hour=14, tm_min=20, tm_sec=56, tm_wday=3, tm_yday=93, tm_isdst=0)
```

```python
time.localtime()
```
```
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
NameError: name 'time' is not defined
```

---
class: middle

# Importing a Python Library

If you want multiple pieces of a library use commas to separate the pieces you want.

```python
from time import localtime, time_ns           # Bring in a couple functions
```

You no longer need the dot operator to get into the time module. In fact, the time module isn't even addressable using this for of importing.

```python
localtime()   # Call the localtime function
time_ns()   # Call the time_ns function
```

---
class: middle

# The `os` module

The `os` module provides an interface to operating system functions. We can...

* List all the files in a directory
* Deleting a file
* Create a file
* Search for and terminate running processes
* etc.

It pretty much mimics the things you can do in Finder in Mac or Explorer in Windows.

---
class: middle

# File Paths

A **pathname** (or path) is a string of characters that gets you to a specific directory or file in your file system. For example, the pathname of the Desktop on Mac is `/Users/brucepucci/Desktop`.

Directories (or folders) in a file path are separated by a slash (/). Every item on your filesystem has an addressable path.

If you had a file on your desktop named `my_file.py`, it's pathname is `/Users/brucepucci/Desktop/my_file.py`.

---
class: middle

# Absolute vs. Relative Paths

A path like `/Users/brucepucci/Desktop` is an **absolute path** because it give you the entirety of the path from the root (`/`) of the file system to where the actual subject is located. An absolute path always refers to the same place no matter where in the system you reference it from.

A **relative path** references a location relative to the place where you currently are in the file path. Relative paths do not start at the root of the filesystem, they start from where you currently are.

---
class: middle

# Absolute vs. Relative Paths

For example, if I am running a command from `/Users/brucepucci` and want to access a file on the desktop named `my_file.py`...

 * Relative path: `Desktop/my_file.py`
 * Absolute path: `/Users/brucepucci/Desktop/my_file.py`

 Any valid path that does not begin with a slash is a relative path.

 ---
class: middle

# Some relative path syntax

A single dot (.) at the beginning of a path references the path that you are currently in.

2 dots (..) at the beginning of a references the ***parent path***, aka 1 path up from here.

`./my_file.py` : Relative path to my_file.py from the path we are currently operating in

`../my_file.py` : Relative path to my_file.py one directory up from the path we are currently operating in

 ---
class: middle

# Exercises

```
├── my_project
│   ├── folder_a
│   │   ├── file_1.txt
│   │   ├── file_2.txt
│   │   ├── file_3.txt
│   │   ├── file_4.txt
│   │   └── folder_a1                     <----
│   │       └── my_secret.key
│   ├── folder_b
│   │   ├── data.csv
│   │   └── data.json
│   ├── folder_c
│   └── my_code.py
```

Say we are in the folder denoted by the arrow. Give a relative path to `my_code.py`

 ---
class: middle

# Exercises

```
├── my_project                     <----
│   ├── folder_a
│   │   ├── file_1.txt
│   │   ├── file_2.txt
│   │   ├── file_3.txt
│   │   ├── file_4.txt
│   │   └── folder_a1
│   │       └── my_secret.key
│   ├── folder_b
│   │   ├── data.csv
│   │   └── data.json
│   ├── folder_c
│   └── my_code.py
```

Say we are in the folder denoted by the arrow. Give a relative path to `my_code.py`

 ---
class: middle

# Exercises

```
├── my_project                     <----
│   ├── folder_a
│   │   ├── file_1.txt
│   │   ├── file_2.txt
│   │   ├── file_3.txt
│   │   ├── file_4.txt
│   │   └── folder_a1
│   │       └── my_secret.key
│   ├── folder_b
│   │   ├── data.csv
│   │   └── data.json
│   ├── folder_c
│   └── my_code.py
```

Say we are in the folder denoted by the arrow. Give a relative path to `data.json`

---
class: middle

# Basic use of the `os` module

Let's use some of the basic functionality in the `os` module to poke around our file system.

I am going to create a directory called `my_project` in my Documents folder that looks like this...

```
├── my_project
│   ├── folder_a
│   │   ├── file_1.txt
│   │   ├── file_2.txt
│   │   ├── file_3.txt
│   │   ├── file_4.txt
│   │   └── folder_a1
│   │       └── my_secret.key
│   ├── folder_b
│   │   ├── data.csv
│   │   └── data.json
│   ├── folder_c
│   └── my_code.py
```

All of the example code I will provide is going to run from my_code.py

---
class: middle

# Basic use of the `os` module

```
├── my_project
│   ├── folder_a
│   │   ├── file_1.txt
│   │   ├── file_2.txt
│   │   ├── file_3.txt
│   │   ├── file_4.txt
│   │   └── folder_a1
│   │       └── my_secret.key
│   ├── folder_b
│   │   ├── data.csv
│   │   └── data.json
│   ├── folder_c
│   └── my_code.py
```

Print out the file path where the code is running...

```python
### Assume this is running in my_code.py

import os

os.getcwd()     # get current working directory
```

```
'/Users/brucepucci/Documents/my_project'
```

---
class: middle

# Basic use of the `os` module

```
├── my_project
│   ├── folder_a
│   │   ├── file_1.txt
│   │   ├── file_2.txt
│   │   ├── file_3.txt
│   │   ├── file_4.txt
│   │   └── folder_a1
│   │       └── my_secret.key
│   ├── folder_b
│   │   ├── data.csv
│   │   └── data.json
│   ├── folder_c
│   └── my_code.py
```

List all the files in a directory

```python
### Assume this is running in my_code.py

import os

os.listdir()     # list files in current working directory
```

```
['my_code.py', 'folder_b', 'folder_c', 'folder_a']
```

---
class: middle

# Basic use of the `os` module

```
├── my_project
│   ├── folder_a
│   │   ├── file_1.txt
│   │   ├── file_2.txt
│   │   ├── file_3.txt
│   │   ├── file_4.txt
│   │   └── folder_a1
│   │       └── my_secret.key
│   ├── folder_b
│   │   ├── data.csv
│   │   └── data.json
│   ├── folder_c
│   └── my_code.py
```

List all the files in a directory

```python
### Assume this is running in my_code.py

import os

os.listdir('./folder_a')     # We can pass a path to listdir to list that paths files
```

```
['file_4.txt', 'file_1.txt', 'file_2.txt', 'file_3.txt', 'folder_a1']
```