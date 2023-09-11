use dict::felt252DictTrait;
use debug::PrintTrait;

fn get_user(name:felt252, ref marks: felt252Dict<u64>) -> u64 {
    marks.get(name)
}

fn main() {
    let mut marks: felt252Dict<u64> = Default::Default();

    marks.insert('Alex', 9);
    marks.insert('Bob',  10);
    marks.insert('Manu', 50);
    marks.insert('Adams', 70);

    let adams_balance = get_user('Adams', ref marks);

    adams_balance.print();
}