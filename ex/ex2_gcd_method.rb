# 演習問題（2）
# 任意の2つの数値をコマンドラインから読み込む。
# ユークリッドの互助法を用いて最大公約 数を計算するプログラムを作成せよ。


# 渡された２つの引数の最大公約数を求めて返すメソッド
def gcd(a, b)
    if a < b then
        a, b = b, a
    end
    
    r = a % b
    while r != 0 do
        a, b = b, r
        r = a % b
    end
    
    # 最大公約数を返す
    b
end

print "１つ目の数値を入力してください："
a = gets.to_i
print "２つ目の数値を入力してください："
b = gets.to_i

gcd = gcd(a, b)

puts "#{a}と#{b}の最大公約数は#{gcd}です"