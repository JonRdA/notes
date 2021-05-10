### C PROGRAMMING LANGUAGES

## GENERAL
 - Can't use function before defining. To work first line must be copied on top
 - formatting floats "%.4f" will show four digits after decimal point
 - variables can be declared outside main function, e.g. constants at begining

DATA TYPES
 - C uses single quotes '' for char data type, characters
 - casting is converting one data type to other: this will print ASCCI number
       car ch = 'H';
       printf("%i", (int) ch)
       $ 72
 - a data type can be modified on the run specified between parenthesis before
   the variable is used:    (float) my_integer  will treat my_integer as a float
 -  typedef struct --> creates a new data:
     """typedef struct
        {
            string name;
            string number
        }
        person;"""

 CONDITIONALS
 - if, else if, else if, else conditionals are mutually exclusive. Only one of
   them can be entered.
 - if, if, if, esle is not mutually exclusive. Else only binds to last if
 - switch(var) is an enumeration of discrete cases, break is needed after case
 - ternary operator oneline cond 'int x (expr) ? 5: 6' if expr x is 5 else 6.

FUNCTIONS
 - to use a function before its definition, it must be declared at the top.
   It is identical to the definition but adding a ';' at the end.
 - syntax: return_type func_name(argument_list);
 - the argument list is comma separated and must specify the type

ARRAYS
 - An array is a block of contiguous space in memory, spaced into elements
   (small identically-sized blocks)
 - They contain same data types
 - Can be accessed by index.
 - array declaration: type array_name[size];



