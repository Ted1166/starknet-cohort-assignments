# Compare pass-by-value and pass-by-reference in Cairo, providing code examples for each.

## Pass by value

It is the case of passing a variable to another function as an argument.

 ```
    use debug::PrintTrait;

    fn area(A: u64, B: u64) -> u64 {
        A * B
    }

    fn main(){
        let c = area(3,2);
        C.print();
    }
```

## Pass by refference

In this method we are not copying any data from one place to other but rather using two pointers pointing to the same memory location where original variables reside.

Here's how it can be done with Cairo language :
1 - Declare two variables `a` & `b`, both will hold values which we want
to modify inside our functions using pointers or references respectively.<|im_sep|>

````
    use debug::PrintTrait;

    struct Fruits{
        Mango: u64,
        Orange: u64, 
    }

    fn main() {
        let mut fru = Fruits {Mango: 20, Orange: 10};
        flip (ref fru);
        fru.Mango.print();
        fru.Orange.print();
    }

    fn flip(ref fru: Fruits) {
        let temp = fru.Mango;
        fru.Mango = fru.Orange;
        fru.Orange = temp;
    }

````



