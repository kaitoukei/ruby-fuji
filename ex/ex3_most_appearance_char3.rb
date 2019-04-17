# 演習問題（3）
# ユーザが入力した文字列からもっとも出現頻度の多い文字を表示せよ。
# 最多出現文字が複数の場合にも対応（処理を少し凝ってみた）

#####
# 文字列から文字出現頻度Hashを作成するメソッド
#---
def create_char_count_hash(str)
    # Hashを新規に作成する（デフォルト値=0）
    char_count = Hash.new(0)
    str.each_char do |c|
        char_count[c] += 1 
    end
    
    # 作成したHashを返す
    char_count
end

#####
# 出現回数の最大値とその文字を返す
#---
def most_frequency(char_count_hash)
    # 出現回数の最大値を求める
    most_frequency_ary = char_count_hash.group_by{|k, v| v}.max
    most_count = most_frequency_ary[0]
    chars = most_frequency_ary[1].transpose[0]
    return most_frequency_ary[0], chars
end

#####
# main
#---

# 処理対象の文字列を入力
print "文字列を入力してください："
str = gets.chomp

# 出現回数の最大値とその文字（複数・配列）を求める
most_count, chars = most_frequency(create_char_count_hash(str))

# 結果を出力する
puts "最多出現文字：#{chars.join(',')}"
puts "回数：#{most_count}"

