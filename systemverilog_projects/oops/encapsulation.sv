// Encapsulation
// Keeping the data hidden ('local') and giving access only through methods.

class account;
  local int balance;   // cannot be touched from outside the class

  function new();
    balance = 0;
  endfunction

  // controlled access through methods
  function void deposit(int amount);
    balance = balance + amount;
  endfunction

  function int get_balance();
    return balance;
  endfunction
endclass

module encapsulation;
  initial begin
    account a;
    a = new();
    a.deposit(500);
    a.deposit(250);
    // a.balance = 0;  // not allowed, balance is local
    $display("Balance = %0d", a.get_balance());
  end
endmodule
