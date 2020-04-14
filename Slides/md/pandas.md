class: middle, center

# Pandas Intro

![](https://pandas.pydata.org/static/img/pandas.svg)

---
class: middle

# 3rd Party Python Packages

While we do get hundreds of libraries in the Python Standard Library it doesn't give us everything. There are plenty of other, more specific, use cases where Python can help you. For these, more specialized, use cases there are many thousands of packages made by 3rd party developers.

These packages don't exist when you install Python... You need to make additional installs to have them available for use. For that, `pip` and `PyPI` exist.

---
class: middle

# `pip` and `PyPI`

* **pip** is an executable program that ships with Python that handles the download, organization and install of 3rd party Python packages.

* **PyPi** stands for the Python Package Index and hosts the packages that PIP can install. As of April 9th, 2020 there are currently 227,092 projects on PyPI.

So... pip runs locally on your computer, reaches out to PyPI to download a package then installs it so you can import and use it later.

---
class: middle

# Using pip

`pip` is deal simple to use. Once you find a package that you want to install you just run something like this in your systems Terminal application...

```
pip install numpy
```

After the install completes you can import a package just like the standard library like this...

```
import numpy
```

---
class: middle

# A note on pip in Google Colab notebooks

All of the packages that we will be using in class are **already installed** there. You will not have to run the `pip install xxx` line above to use these packages. However, if you want to use them locally or in a future project you will need to install them with `pip`.

---
class: middle

# What types of packages are available on PyPI?

You can pretty much find something for any use case. Some of the most popular packages and their use cases are listed below...

* **pandas** - Manipulating tabular data
* **numpy** - Numerical computing
* **flask** - Serving a web site
* **requests** - Make web requests
* **pillow** - Image manipulation
* **matplotlib** - Visualizing data
* **tensorflow** - Build and train neural networks
* **arrow** - Better date/time support

---
class: middle

# Pandas

We are going to be covering **Pandas** pretty in-depth in the next few weeks. For business applications it is probably the best skill to learn at this point.

Pandas is a pacakge used for transforming, summarizing, and reading/writing *tabular data*.

---
class: middle

# What is tabular data?

We've all seen *tables* of a data before. The most common place you've probably seen it is in Microsoft Excel.

![](https://pandas.pydata.org/docs/_images/01_table_spreadsheet.png)

Tables consist of a series of **columns** and **rows**. Typically, each row represents an individual record and each column is a property of that record.

Tabular data can be found outside of MS Excel obviously. For example...

* 2D matrix in linear algebra
* SQL tables
* CSV files
* HTML tables
* Images are a numerical matrix of pixels
* Videos are a series of images
* Etc...

---
class: middle
# A third element... The row index

Columns and rows should be pretty intuitive but a 3rd element comes into play called an *index*. An index is simple a reference to a specific row. Each row much have a unique index. Row number is a perfectly good index but you could use something more descriptive in certain situations. An example might be something like order # in an application for a restaurant receipts.

Columns have an equivalent, the column name. Just think of the index as a "row name"

---
class: middle

# A list of data in Pandas is called a **Series**

Every series has an index. Usually that index is just like a standard Python list index... integers from 0 to the length of the list - 1. However, as discussed in previous slide it can be whatever you want as long as it is unique to each record.

All items in a series must be of the same datatype. For example, a series of `int` cannot contain a `float`.

---
class: middle

# Comparing pandas series vs Python list

| Pandas Series                          | Python List                            |
|----------------------------------------|----------------------------------------|
| Elements must be same data type        | Elements can be mixed data types       |
| Customizable index                     | Always indexed from 0..len()-1         |
| Extremely fast for numerical operation | Extremely slow for numerical operation |
| Many of handy numerical methods        | Very few numerical methods             |
| Great for tabular data                 | Great for general purpose programming  |

---
# Creating a Pandas Series

```python
*import pandas as pd  # import pandas and alias it to pd
```

---
# Creating a Pandas Series

```python
import pandas as pd

*my_series = pd.Series([0, 1, 2, 3, 4, 5, 6, 7, 8, 9]) # Wrap a list with pd.Series()
```

---
# Creating a Pandas Series

```python
import pandas as pd

my_series = pd.Series([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
*print(my_series)
```

```
0    0
1    1
2    2
3    3
4    4
5    5
6    6
7    7
8    8
9    9
dtype: int64
```

---
# Creating a Pandas Series

```python
import pandas as pd

my_series = pd.Series([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
*print(my_series[0])   # Look up by index
```

```
0
```

---
# Creating a Pandas Series

```python
import pandas as pd

my_series = pd.Series([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
*my_series.index = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j']

print(my_series)
```

```
a    0
b    1
c    2
d    3
e    4
f    5
g    6
h    7
i    8
j    9
dtype: int64
```

---
# Creating a Pandas Series

```python
import pandas as pd

my_series = pd.Series([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
my_series.index = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j']

*print(my_series['b'])  ## lookup by index
```

```
1
```

---
# Doing something with a Pandas Series

There are a ton of methods you can call on a series. Most are math/stats based.

```python
import pandas as pd

my_series = pd.Series([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])

*print(my_series.max())  ## return the max value
```

```
9
```

---
# Doing something with a Pandas Series

There are a ton of methods you can call on a series. Most are math/stats based.

```python
import pandas as pd

my_series = pd.Series([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])

*print(my_series.mean())  ## return the mean value
```

```
4.5
```

---
# Doing something with a Pandas Series

There are a ton of methods you can call on a series. Most are math/stats based.

```python
import pandas as pd

my_series = pd.Series([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])

*print(my_series.describe())  ## summarize our data
```

```
count    10.00000
mean      4.50000
std       3.02765
min       0.00000
25%       2.25000
50%       4.50000
75%       6.75000
max       9.00000
dtype: float64
```

---
# Doing something with a Pandas Series

There are a ton of methods you can call on a series. Most are math/stats based.

```python
import pandas as pd

my_series = pd.Series([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])

description = my_series.describe()   # Desciption is a Series with index on previous slide
print(description['count'])   # Use it like a Series
```

```
count    10.0
```

---
class: middle

# Mathematical Operations in Pandas are "element wise"

When performing a mathematical operation on 2 Pandas Series' we do so **element wise**. Meaning we add the 1st element from Series a to the 1st element of Series b then the 2nd element from Series a to the 2nd element of series b... and so on. This results in a series of the same length being returned.

---
class: middle

# "Element Wise" operations in action

```python
import pandas as pd

*a = pd.Series(range(10))         # [0 1 2 3 4 5 6 7 8 9]
*b = pd.Series(range(0, 100, 10)) # [ 0 10 20 30 40 50 60 70 80 90]
```

---
class: middle

# "Element Wise" operations in action

```python
import pandas as pd

a = pd.Series(range(10))         # [0 1 2 3 4 5 6 7 8 9]
b = pd.Series(range(0, 100, 10)) # [ 0 10 20 30 40 50 60 70 80 90]

*print(a + b)
```

```
0     0
1    11
2    22
3    33
4    44
5    55
6    66
7    77
8    88
9    99
dtype: int64
```
---
class: middle

# "Element Wise" operations in action

```python
import pandas as pd

a = pd.Series(range(10))         # [0 1 2 3 4 5 6 7 8 9]
b = pd.Series(range(0, 100, 10)) # [ 0 10 20 30 40 50 60 70 80 90]

*print(a * b)
```
```
0      0
1     10
2     40
3     90
4    160
5    250
6    360
7    490
8    640
9    810
dtype: int64
```

---
class: middle

# "Element Wise" operations in action

```python
import pandas as pd

a = pd.Series(range(10))         # [0 1 2 3 4 5 6 7 8 9]
b = pd.Series(range(0, 100, 10)) # [ 0 10 20 30 40 50 60 70 80 90]

*print(a / b)   # Notice Type conversion and error handling
```
```
0    NaN
1    0.1
2    0.1
3    0.1
4    0.1
5    0.1
6    0.1
7    0.1
8    0.1
9    0.1
dtype: float64
```
---
class: middle

# Tables in Pandas are called DataFrames

![](https://pandas.pydata.org/docs/_images/01_table_dataframe1.svg)

You can think of each column of a DataTable as a Series. Every element in a column must be of the same DataType and you can use all of the Series functionality on it.

Every row is an element from every column. They are have the same index.

---
class: middle

# A DataFrame might look something like this...

```python
                       Name  Age     Sex
0   Braund, Mr. Owen Harris   22    male
1  Allen, Mr. William Henry   35    male
2  Bonnell, Miss. Elizabeth   58  female
```

With an associated Excel table that might look like this...

![](https://pandas.pydata.org/docs/_images/01_table_spreadsheet.png)


---
class: middle

# To create a DataFrame we essentially just give the constructor a bunch of Series.

There are a lot of ways to create a DataFrame but the most popular is this dictionary syntax...

```python
df = pd.DataFrame({
    "Name": ["Braund, Mr. Owen Harris",
             "Allen, Mr. William Henry",
             "Bonnell, Miss. Elizabeth"],
   "Age": [22, 35, 58],
   "Sex": ["male", "male", "female"]
})

print(df)
```

```python
                       Name  Age     Sex
0   Braund, Mr. Owen Harris   22    male
1  Allen, Mr. William Henry   35    male
2  Bonnell, Miss. Elizabeth   58  female
```

---
class: middle

# The Pandas axis labeling system

An axis is a dimension in a table. The rows are labeled by the `index` and the columns are labeled by the `column names`.

Pandas axes labeling system serves a few purposes...

1) Identifies data
    * Every row and column get a canonical name

2) Enables data alignment
    * Every column will have the same number of rows in the same row ordering
    * Every row will have the same number of columns in the same column ordering

3) Allows the getting and setting of data
    * We can use the respective axis' name to get or set it's values

---
# Selecting DataFrame Columns

Pass column names as a list to the index operator select certain columns

```
                       Name  Age     Sex
0   Braund, Mr. Owen Harris   22    male
1  Allen, Mr. William Henry   35    male
2  Bonnell, Miss. Elizabeth   58  female
```

```
*df[['Name', 'Age']]   # Get subset of DataFrame by column names
```

```
                       Name  Age
0   Braund, Mr. Owen Harris   22
1  Allen, Mr. William Henry   35
2  Bonnell, Miss. Elizabeth   58
```

---
# Selecting DataFrame Columns

A Pandas column is a Pandas Series. If you want the series data type back just past the column name as a sting instead of a list.

```
                       Name  Age     Sex
0   Braund, Mr. Owen Harris   22    male
1  Allen, Mr. William Henry   35    male
2  Bonnell, Miss. Elizabeth   58  female
```

```
*df['Age']   # Get Age as a Series
```

```
0    22
1    35
2    58
Name: Age, dtype: int64
```


---
# Selecting DataFrame Columns

A Pandas column is a Pandas Series. If you want the series data type back just past the column name as a sting instead of a list.

```
                       Name  Age     Sex
0   Braund, Mr. Owen Harris   22    male
1  Allen, Mr. William Henry   35    male
2  Bonnell, Miss. Elizabeth   58  female
```

```
*df.Age   # Can also use the dot operator
*        # Will not work with columns with a space
```

```
0    22
1    35
2    58
Name: Age, dtype: int64
```

---
# Selecting DataFrame Rows

Selecting a row or slice of rows is a little more tricky. There are 2 features to the DataFrame class you can use... `.loc` and `.iloc`

```
                       Name  Age     Sex
A   Braund, Mr. Owen Harris   22    male
B  Allen, Mr. William Henry   35    male
C  Bonnell, Miss. Elizabeth   58  female
```

**Notice that I changed the row index to A, B, C.**

---
# Selecting DataFrame Rows

Selecting a row or slice of rows is a little more tricky. There are 2 features to the DataFrame class you can use... `.loc` and `.iloc`

```
                       Name  Age     Sex
A   Braund, Mr. Owen Harris   22    male
B  Allen, Mr. William Henry   35    male
C  Bonnell, Miss. Elizabeth   58  female
```

```python
*df.iloc[0]   # iloc looks up by row number
```

```
Name    Braund, Mr. Owen Harris
Age                          22
Sex                        male
Name: A, dtype: object
```

---
# Selecting DataFrame Rows

Selecting a row or slice of rows is a little more tricky. There are 2 features to the DataFrame class you can use... `.loc` and `.iloc`

```
                       Name  Age     Sex
A   Braund, Mr. Owen Harris   22    male
B  Allen, Mr. William Henry   35    male
C  Bonnell, Miss. Elizabeth   58  female
```

```python
*df.loc['A']   # loc looks up by row index
```

```
Name    Braund, Mr. Owen Harris
Age                          22
Sex                        male
Name: A, dtype: object
```

---
# Selecting DataFrame Rows

Selecting a row or slice of rows is a little more tricky. There are 2 features to the DataFrame class you can use... `.loc` and `.iloc`

```
                       Name  Age     Sex
A   Braund, Mr. Owen Harris   22    male
B  Allen, Mr. William Henry   35    male
C  Bonnell, Miss. Elizabeth   58  female
```

```python
*df.iloc[0:2]   # iloc can slice too
```

```
                       Name  Age   Sex
A   Braund, Mr. Owen Harris   22  male
B  Allen, Mr. William Henry   35  male
```

---
# Selecting DataFrame Rows

Selecting a row or slice of rows is a little more tricky. There are 2 features to the DataFrame class you can use... `.loc` and `.iloc`

```
                       Name  Age     Sex
A   Braund, Mr. Owen Harris   22    male
B  Allen, Mr. William Henry   35    male
C  Bonnell, Miss. Elizabeth   58  female
```

```python
*df.loc['A':'B']   # loc can also slice but it's a little weird
```

```
                       Name  Age     Sex
A   Braund, Mr. Owen Harris   22    male
B  Allen, Mr. William Henry   35    male
```

---
# Selecting DataFrame Rows & Columns

You can also use `.iloc` and `.loc` to select on both row and column. You just separate them by a comma.

```
                       Name  Age     Sex
A   Braund, Mr. Owen Harris   22    male
B  Allen, Mr. William Henry   35    male
C  Bonnell, Miss. Elizabeth   58  female
```

```python
*df.iloc[:2, :2]  # First 2 rows and columns
```

```
                       Name  Age
A   Braund, Mr. Owen Harris   22
B  Allen, Mr. William Henry   35
```

---
# Selecting DataFrame Rows & Columns

You can also use `.iloc` and `.loc` to select on both row and column. You just separate them by a comma.

```
                       Name  Age     Sex
A   Braund, Mr. Owen Harris   22    male
B  Allen, Mr. William Henry   35    male
C  Bonnell, Miss. Elizabeth   58  female
```

```python
*df.loc[:, ['Age', 'Sex']]   # All rows and 2 columns
```

```
   Age     Sex
A   22    male
B   35    male
C   58  female
```

---

# Selecting DataFrame Rows & Columns On Boolean Values

If you pass a list of Booleans to the index operator we filter rows based on the row numbers.

```
                       Name  Age     Sex
A   Braund, Mr. Owen Harris   22    male
B  Allen, Mr. William Henry   35    male
C  Bonnell, Miss. Elizabeth   58  female
```

```python
*df[True, False, True]   # 1st and 3rd rows
```

```
                       Name  Age     Sex
A   Braund, Mr. Owen Harris   22    male
C  Bonnell, Miss. Elizabeth   58  female
```

Turns out this is really, really useful...

---

# Selecting DataFrame Rows based on a column condition

We can return a list of booleans from a Pandas operation and use that to index

```
                       Name  Age     Sex
A   Braund, Mr. Owen Harris   22    male
B  Allen, Mr. William Henry   35    male
C  Bonnell, Miss. Elizabeth   58  female
```

```python
*df[df.Sex == 'male']   # All the males in our DataFrame
```

```
                       Name  Age   Sex
A   Braund, Mr. Owen Harris   22  male
B  Allen, Mr. William Henry   35  male
```

---

# Selecting DataFrame Rows based on a column condition

We can return a list of booleans from a Pandas operation and use that to index

```
                       Name  Age     Sex
A   Braund, Mr. Owen Harris   22    male
B  Allen, Mr. William Henry   35    male
C  Bonnell, Miss. Elizabeth   58  female
```

```python
*df[df.Age >= 30]   # All the people over 30 years old
```

```
                       Name  Age     Sex
B  Allen, Mr. William Henry   35    male
C  Bonnell, Miss. Elizabeth   58  female
```

---

# Adding a Column

Adding a column is dead simple. Name your column using the index operator and give it an iterable that has the same number of record as there are rows.

```
                       Name  Age     Sex
A   Braund, Mr. Owen Harris   22    male
B  Allen, Mr. William Henry   35    male
C  Bonnell, Miss. Elizabeth   58  female
```

```python
*df['Salary'] = [50000, 100000, 400000]  # Adding a column named Salary
```

```
                       Name  Age     Sex  Salary
A   Braund, Mr. Owen Harris   22    male   50000
B  Allen, Mr. William Henry   35    male  100000
C  Bonnell, Miss. Elizabeth   58  female  400000
```

---

# Changing a Column

Slide to the column or row you want and give it an iterable.

```
                       Name  Age     Sex  Salary
A   Braund, Mr. Owen Harris   22    male   50000
B  Allen, Mr. William Henry   35    male  100000
C  Bonnell, Miss. Elizabeth   58  female  400000
```

```python
*df['Salary'] = df['Salary'] * 1.1  # Everyone gets a 10% raise
```

```
                       Name  Age     Sex    Salary
A   Braund, Mr. Owen Harris   22    male   55000.0
B  Allen, Mr. William Henry   35    male  110000.0
C  Bonnell, Miss. Elizabeth   58  female  440000.0
```

---

# Adding a row

You can add a row with a dictionary who's keys are the column names.

```
                       Name  Age     Sex    Salary
A   Braund, Mr. Owen Harris   22    male   55000.0
B  Allen, Mr. William Henry   35    male  110000.0
C  Bonnell, Miss. Elizabeth   58  female  440000.0
```

```python
df.loc['D'] = {     # using .loc
    'Name': 'Horton, Tim',
    'Age': 37,
    'Sex': 'male',
    'Salary': 80000
}
```

```
                       Name  Age     Sex    Salary
A   Braund, Mr. Owen Harris   22    male   55000.0
B  Allen, Mr. William Henry   35    male  110000.0
C  Bonnell, Miss. Elizabeth   58  female  440000.0
D               Horton, Tim   37    male   80000.0
```


