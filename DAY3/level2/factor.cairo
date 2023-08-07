use debug::PrintTrait;

fn main() {
    let mut number: u32 = 20;
    let mut n: u32 = 1;

    loop {
        n *= number;
        
        if number == 1 {
            break;
        }
        number -= 1;

        n.print();
    };
    n.print();
}