# CS 354 - 1 | LA1
# Maten Karim

## Project Specification
This project implements a Scheme function named **`super-duper`** that recursively duplicates every element in a list a specified number of times. The behavior is:
- If the source is an **atom**, return it unchanged.
- If the source is an **empty list** (`'()`), return it unchanged.
- If the source is a **proper list**, recursively process each element; if an element is another list, that inner list is also processed recursively. Each element is duplicated `count` times.

By using only recursion and avoiding side-effecting functions or loops, we keep a purely functional approach. The code is contained in two files:

1. **`super-duper.scm`**  
   - The main definitions for `super-duper` and helper functions (`duper`, `du-element`, `du-duplicate`, `du-build-string`).

2. **`super-duper-main.scm`**  
   - Demonstrates how to load and run `super-duper`, including test cases and example inputs.

## Prerequisites
- **Guile** (a Scheme interpreter). Make sure it’s installed and accessible in your environment.  
- Basic familiarity with the command line to run Guile or scripts.

## Running the Program
You have three options to run and demonstrate the functionality.

### 0. Project Directory
First, ensure you are in the directory containing these files:

`main`, `super-duper.scm`, & `super-duper-main.scm`

### 1. Running the Program
You have **three** options for running the program.
#### 1.1 Running the *main* program
While in the project directory, simply run the main file in a bash terminal:
```bash
main
```
#### 1.2 Running the demo file with Guile directly
While in the project directory, you also have the option to run the demo program directly.

In the bash terminal, type this:
```bash
guile super-duper-main.scm
```
#### 1.3 Running demo file from the Guile REPL
You can also start Guile manually and load the file from there:
```bash
guile
```
While inside the Guile REPL, type:

**(load "super-duper-main.scm")**

This will evaluate `super-duper-main.scm`, which in turn loads `super-duper.scm` and runs all the demo examples.

### 2. Results
The results of running `super-duper-main.scm` should look like this:

-----------------------------------------------------

Input: (super-duper 123 1)

⇒ 123

Input: (super-duper 123 2)

⇒ 123

Input: (super-duper '() 1)

⇒ ()

Input: (super-duper '() 2)

⇒ ()

Input: (super-duper '(x) 1)

⇒ (x)

Input: (super-duper '(x) 2)

⇒ (x x)

Input: (super-duper '(x y) 1)

⇒ (x y)

Input: (super-duper '(x y) 2)

⇒ (x x y y)

Input: (super-duper '((a b) y) 3)

⇒ ((a a a b b b) (a a a b b b) (a a a b b b) y y y)

-----------------------------------------------------

Extra test cases:

Input: (super-duper '(1 2 3) 0)

⇒ ()

Input: (super-duper '(2 () 3) 3)

⇒ (2 2 2 () 3 3 3)

Input: (super-duper '((1 (4 0)) 8) 2)

⇒

((1 1 (4 4 0 0) (4 4 0 0)) (1 1 (4 4 0 0) (4 4 0 0)) 8 8)


Input: (super-duper '(Hello World (2 3 No) !% 1) 2))

⇒

(Hello Hello World World (2 2 3 3 No No) (2 2 3 3 No No) !% !% 1 1)


