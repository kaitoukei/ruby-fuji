
getNumber = gets.to_i
(1..getNumber).each { |i|
 s = 'fizz' if i % 3 == 0
 s = 'buzz' if i % 5 == 0
 s = 'fizzbuzz' if i % 15 == 0
 puts s || i
}
