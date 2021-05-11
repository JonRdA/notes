### C PROGRAMMING LANGUAGES

## GENERAL
* Can't use function before defining. To work first line must be copied on top
* formatting floats "%.4f" will show four digits after decimal point
* variables can be declared outside main function, e.g. constants at begining

## DATA TYPES
* C uses single quotes '' for char data type, characters
* casting is converting one data type to other: this will print ASCCI number
```c
car ch = 'H';
printf("%i", (int) ch)
$ 72
```

* a data type can be modified on the run specified between parenthesis before
   the variable is used:    (float) my_integer  will treat my_integer as a float
*  typedef struct --> creates a new data:
```c
typedef struct Books {
   char title[50];
   char author[50];
   char subject[100];
   int book_id;
} Book;
   ```

## CONDITIONALS
* if, else if, else if, else conditionals are mutually exclusive. Only one of
   them can be entered.
* if, if, if, esle is not mutually exclusive. Else only binds to last if
* Switch(var) is an enumeration of discrete cases, break is needed after case
* Ternary operator allows one line conditionals:
```c
 if (a > b) {
    result = x;
}
else {
    result = y;
}
// Is equivalent to the following
result = a > b ? x : y;
```

## FUNCTIONS
* A function must be defined before its being used. If not a declaration must
  be added at the top. Identical to definition but adding `;` at the end
* Declaration syntax: `return_type func_name(argument_list);`
* Arguments lists are comma separated and must specify the type

## ARRAYS
* An array is a block of contiguous space in memory, identically-sized blocks
* They contain the same data types
* Can be accessed by index.
* Array declaration syntax: `type array_name[size];`



