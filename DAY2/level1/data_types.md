# CONCEPT OF DATA TYPE

Every value in Cairo is of a certain data type, which tells Cairo what kind of data is being specified so it knows how to work with that data.Cairo is a *statically typed language*, which means that it must know the types of all variables at compile time.

## Scalar Types

This Type represents a single value. Cairo has three primary scalar types: felts, integers, and booleans.
      
    - ### Felt (Field Element)

      If you don't specify the type of a variable or argument, its type defaults to a field element, represented by the keyword felt252.

      A field element is an integer  0 <= x < P, where P is a very large prime number currently equal to P = 2^{251} + 17 * 2^{192}+1.
    
    - ### Integer Types

       Integer is a number without a fractional component.
              - 32bit as u32
              - 64bit as u64
              - 128bit as u128
              - 16bit as u16
       
    - ### Boolean Type

       Boolean type in Cairo has two possible values: true and false.

## Type Casting 

You can convert types scalar types from one type to another by using the *try_into* and *into* methods provided by the TryInto and Into traits, respectively. 

The try_into method allows for safe type casting when the target type might not fit the source value. On the other hand, the into method can be used for type casting when success is guaranteed, such as when the source type is smaller than the destination type.

## Tuple Type

A tuple is a general way of grouping together a number of values with a variety of types into one compound type. Tuples have a fixed length: once declared, they cannot grow or shrink in size.

A tuple is created by writing a comma-separated list of values inside parentheses.

