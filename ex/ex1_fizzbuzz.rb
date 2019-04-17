# 演習問題（１）
# FIZZBUZZ を Ruby で記述せよ。
# 1 から順に 100 まで数値を出力し、
# 3の倍数で FIZZ、5 の倍数で BUZZ、
# 15 の倍数で FIZZBUZZ と表示するプログラムとする。

1.upto(100) do |n|
    if n % 15 == 0 then
        puts "FIZZBUZZ"
    elsif n % 3 == 0 then
        puts "FIZZ"
    elsif n % 5 == 0 then
        puts "BUZZ"
    else
        puts n
    end
end