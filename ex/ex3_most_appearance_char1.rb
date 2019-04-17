# 演習問題（3）
# ユーザが入力した文字列からもっとも出現頻度の多い文字を表示せよ。

#####
# 文字列から文字出現頻度Hashを作成するメソッド
#---
def create_char_count_hash(str)
    # Hashを新規に作成する（デフォルト値=0）
    char_count = Hash.new(0)
    str.each_char do |c|
        # if char_count.include?(c) then        # ９行目でHash.new(0)とすると=>
        #     char_count[c]+= 1
        # else
        #     char_count[c] = 0
        # end
        char_count[c] += 1              # =>この行だけで良い
    end
    
    # 作成したHashを返す
    char_count
end

#####
# 出現回数の最大値とその文字を返す
#---
def most_frequency(char_count_hash)
    # 出現回数の最大値とその文字を求める
    most_frequency_ary = char_count_hash.map{|k, v| [k, v]}.max{|ary1, ary2| ary1[1]<=>ary2[1]}
    most_count = most_frequency_ary[1]
    chars = most_frequency_ary[0]
    return most_count, chars
end

#####
# main
#---

# 処理対象の文字列を入力
print "文字列を入力してください："
str = gets.chomp

# 出現回数の最大値とその文字を求める
most_count, char = most_frequency(create_char_count_hash(str))

# 結果を出力する
puts "最多出現文字：#{char}"
puts "回数：#{most_count}"

