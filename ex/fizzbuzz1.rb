inputNumber = gets
myNumber = inputNumber.to_i

1.upto(myNumber)do |n|
  case
    when n%15==0
      puts "fizzbuzz"
    when n%3==0
      puts "fizz"
    when n%5==0
      puts "buzz"
    else
      puts n
  end
end
