use debug::PrintTrait;

fn main() {
    let area = area(length, width);
    let length = 12;
    let width = 5;

    area.print();
}

fn area(length: u64, width: u64) -> u64 {
    length * width
}