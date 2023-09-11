/// Account module for handling balance checks and related functions.
mod Account {
    /// Check the balance of an account.
    fn checkBalance(){}
}

/// Transaction module for deposit, withdrawal, and transfer functions.
mod Transaction {
    /// Deposit, withdraw and transfer funds into an account.
    fn deposit(){}
    fn withdraw(){}
    fn transfer(){}
}

/// Bank module for managing bank accounts.
mod Bank {
    use array::ArrayTrait;
    use debug::PrintTrait;


    #[derive(Copy, Drop)]
    struct BankAccount{
        bankBalance: u32,
        accountName: felt252,
    }

    #[derive(Drop)]
    struct BankStorage {
        bankAccounts: Array<BankAccount>
    }

    /// Create new bank accounts.
    /// 
    /// This function creates a new bank account and appends it to the bank's account list.
    /// 
    /// # Arguments
    /// 
    /// * `accountName` - The name of the account.
    /// * `bank` - Reference to the bank's storage.
    fn createAccounts(accountName: felt252, ref bank: BankStorage){
        let mut bankStorage = BankStorage {bankAccounts: ArrayTrait::new()};
        let account = BankAccount {accountName, bankBalance: 0};
        bank.bankAccounts.append(account);
    }

    /// Get the number of bank accounts in the storage.
    /// 
    /// # Arguments
    /// 
    /// * `bank` - Reference to the bank's storage.
    /// 
    /// # Returns
    /// 
    /// The number of bank accounts.
    fn displayLength(bank: @BankStorage) -> usize{
        bank.bankAccounts.len()
    }
    
    /// Get the account name for a given bank account.
    /// 
    /// # Arguments
    /// 
    /// * `bank` - Reference to a bank account.
    /// 
    /// # Returns
    /// 
    /// The account name.
    fn displayAccount(bank: @BankAccount) -> @felt252{
        bank.accountName
    }
    
    /// Implementation of the PrintTrait for BankAccount.
    impl BankAccountPrintTrait of PrintTrait<BankAccount> {
        fn print(self: BankAccount){
            self.accountName.print();
            self.bankBalance.print();
        }
    }
}

use Bank::{BankAccount, BankStorage, createAccounts, displayLength};
use debug::PrintTrait;
fn main(){
    let mut bank = BankStorage {
        bankAccounts: ArrayTrait::new()
    };


    createAccounts('account1',ref bank);
    createAccounts('account2',ref bank);
    let account1 = bank.bankAccounts[0];
}