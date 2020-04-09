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
class: middle

# Tables in Pandas are called DataFrames

![](https://pandas.pydata.org/docs/_images/01_table_dataframe1.svg)