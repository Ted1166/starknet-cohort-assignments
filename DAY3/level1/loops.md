## PURPOSE AND USAGE OF LOOPS IN CAIRO

Loops often useful to execute a block of code more than once.
In Cairo only has one kind of loop which is the *loop syntrax*.

Here's an example;

    ````
        use debug::PrintTrait;
        fn main() {
            let mut i: usize = 0;
            loop {
                if i > 10 {
                    break;
                }
                'again!'.print();
            }
        }

    ````

Loops are always infinite so in order to break out of a loop, you can place the break statement within the loop to tell the program when to stop executing 
