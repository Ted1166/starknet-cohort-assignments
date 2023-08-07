use debug::PrintTrait;

fn main() {
    let x: u64 = 0;

    if x >= 1 {
        '+ve number'.print();
    }
    else {
        '-ve number or 0'.print();
    }
}