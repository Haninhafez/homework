void main() {
  BankAccount account1 = BankAccount();
  account1.balance = 1500;
  print("Balance : ${account1.balance}");
  BankAccount account2 = BankAccount();
  account2.balance = -50;
  print("Balance : ${account2.balance}");
}

class BankAccount {
  var _balance;
  set balance(var balance) {
    if (balance == null || balance <= 0)
      print("'Invalid balance' if attempted");
    else
      _balance = balance;
  }

  get balance => _balance;
}
