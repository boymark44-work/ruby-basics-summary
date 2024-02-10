def print_five_times
  5.times { print "Hello" }
end

print_five_times # => HelloHelloHelloHelloHello
puts


def money_printer(num)
  num.times { print "Money" }
  puts
end

money_printer(3) # => MoneyMoneyMoney
money_printer(5) # => MoneyMoneyMoneyMoneyMoney
p money_printer(0) # => ["", nil]
