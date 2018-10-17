# 配列の練習

numbers = [1,2,3,4,5,6]

# <map/collectメソッド(+よく上がるmapとeachの違い)>
# map
new_numbers = numbers.map{|n| n*10} # 新しい配列にして返してくれる
puts new_numbers
#collect
new_numbers = numbers.collect{|n| n*10} # 基本mapと同じ処理
puts new_numbers

# 利点は戻り値を新しい配列にしてくれること。
# だからそのまま代入(new_numbers)が可能になる。

# eachだと何が違うのか？
new_numbers = [] # 先に定義して
numbers.each{|n| new_numbers<< n*10} # 処理時に代入しないといけない
puts new_numbers

# 同じ感じで処理出来ないのか？？
new_numbers = numbers.each{|n| n*10}
puts new_numbers　# 答え：出来ない
# nは引数。外では使えないのだ。
# p n 
numbers.each{|n|puts n*10} # でも一応処理自体はちゃんと行ってくれてる

# <select/find_all/rejectメソッド>
# 偶数・奇数それぞれをselectしてみる
even_nunbers = numbers.select{|n| n.even?}
puts even_nunbers
odd_numbers = numbers.select{|n| n.odd?}
puts odd_numbers
# find_allはselectと同じ働き

# rejectは逆の働き。条件の真になった要素を取り出すのではなく、除外する(=偽を取り出す)。
non_even_numbers = numbers.reject{|n| n.even?} # evenの場合(つまり偶数の場合)除外
puts non_even_numbers # つまり奇数が返ってくる

# <find/detectメソッド>
# 真になった最初の要素を取り出す
odd_number = numbers.find{|n| n.odd?}
puts odd_number #=>1

#<inject/reduceメソッド>
# ⇒たたみ込み演算に使う(重ねて計算したいとき)
sum = numbers.inject(0){|result, n| result + n } # 足し算
puts sum
product = numbers.inject(1){|result, n| result * n } # 掛け算
puts product
