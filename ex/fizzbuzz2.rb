def input(add)
    if (add%3==0 and add%5==0)
        "fizzbuzz"
    elsif (add%3==0)
        "fizz"
    elsif (add%5==0)
        "buzz"
    else
        add
    end
end

getNumber = gets.to_i
for n in 1..getNumber
  puts input(n)
end
