print "一つ目の数値を入力してください"
num1=gets.to_i
print "２つ目の数値を入力してください"
num2=gets.to_i

print num1,"と",num2,"の最小公倍数を求めます"
if num1==0 or num2==0
  print "どちらかの数値が０では計算できません\n"
  exit
end

if num2<num1
  m=num1
  n=num2
else
  m=num2
  n=num1
end
print "#{m}と#{n}で計算中--------------------1\n"

while n!=0 do
print "#{m}と#{n}で計算中\n"
  dummy = n
  n = m%n
  m = dummy
end
print "\n========================="
print m,"が最小公倍数です。\n"
print "========================="
