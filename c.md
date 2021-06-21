# C PROGRAMMING LANGUAGE

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

* a data type can be modified using parenthesis before the variable
`(float) n`  will treat the integer `n` as a float
*  typedef struct --> creates a new data:
```c
typedef struct Books 
{
   char title[50];
   char author[50];
   char subject[100];
   int book_id;
}
Book;
   ```

## CONDITIONALS
* if, else if, else if, else conditionals are mutually exclusive. Only one of
   them can be entered.
* if, if, if, esle is not mutually exclusive. Else only binds to last if
* Switch(var) is an enumeration of discrete cases, break is needed after case
* Ternary operator allows one line conditionals:
```c
 if (a > b) 
{
    result = x;
}
else 
{
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
* Functions receive copies of the passed arguments

## ARRAYS
* An array is a block of contiguous space in memory, identically-sized blocks
* They contain the same data types
* Can be accessed by index.
* Array declaration syntax: `type array_name[size];`
* An arrays name is actually a pointer to the first byte, thus functions can
  change the values if array is passed as argument.
* Bracket notation is syntactic sugar for going to next byte in memory.
  `s[1]` is equivalent to `*(s + 1)` go to address of pointer `s` + 1 byte


## POINTERS
* Data type denoted with a `*`, `*q` means that variable `q` is a pointer
* The type of value that the pointer references must be specified 
  `int *n` variable n pointer to an int, `char *s` var s pointer to a char
* `&<var>` __address extraction__ operator, get location in memory of `var`
* `*<poi>` __dereference__ operator go to referende address of pointer `poi`
* `"%p"` format code for pointers  
* `int *p = &n` defines variable `p` as pointer of variable `n` of type `int`.
   operator means the variable `p` is a pointer.
* `NULL` must be written if pointer is initialized with no address to point at


## MEMORY
* `malloc(<bytes>)` memory allocator, returns pointer to the asked memory.
  If no memory can be given returns a `NULL` pointer, need to check for it
* `free(<pointer>)` dealocate memory
* Static & dynamic memory allocation
```c
// Statically obtain an integer
int x:
// Cynamically obtain an integer
int *px = malloc(sizeof(int));
```
* 3 folden rules
  * Every block of memory that was `malloc()`ed must by `free()`d
  * Only memory that was `malloc()` shoud be `free()`d
  * Do not `free()` a block of memory more than once


## BASIC FUNCTIONS
* `printf()` print formated
* `scanf()` reads input from **stdin** according to format, writes value to
  memory so a pointer must be passed as argument, otherwise it'd get a copy
* `fprintf()` file formated print


## FILE I/O
* `FILE` data type for initializing file pointers `FILE \n*f = fopen(<fpath>)`
* functions`fopen()`, `flocse()`, `fgetc()`, `fputc()`, `fread()`, `fwrite()`
  are in *stdio.h* and accept file pointer as parameter, except fopen
* `fopen(<filename>, <operation>)` need to check returned pointer is not NULL
* `char ch = fgetc(<file pointer>);` file get a character, read next
* To read and write to the same file, 2 pointers are needed "r" & "w"
* `EOF` end of file for checking in loops
* `fread(<buffer>, <size>, <qty>, <file pointer>)` read arbitrary amount
```c
int arr[10];
fread(arr, sizeof(int), 10, ptr)
```
* `fwrite(<buffer>, <size>, <qty>, <file pointer>)`
