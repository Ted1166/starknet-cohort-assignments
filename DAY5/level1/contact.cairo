use debug::PrintTrait;

struct Contact{
    name: felt252,
    phone: felt252,
    email: felt252
}

impl ContactDetail of PrintTrait<Contact> {
    fn print (self: Contact) {
        self.name.print();
        self.phone.print();
        self.email.print();
    }
}

fn main() {
    let contact_info = Contact {name: 'Ted Adams', phone: '0717949650', email: 'ogolated00@gmail.com'};
    contact_info.print();
}