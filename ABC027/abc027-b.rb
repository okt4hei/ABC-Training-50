# https://atcoder.jp/contests/abc027/tasks/abc027_b
# N 個の島が横一列に並んでいる。 1≦i≦N−1 について、左から i 番目の島と i+1 番目の島は隣り合っている。
# はじめ、左から i (1≦i≦N) 番目の島には ai​ 人の住人が住んでいる。 高橋君はすべての島に同じ人数の住人が住むようにしたいと考えている。
# 高橋君は隣り合う 2 つの島の間に橋を架けることができる。
# また、直接的または間接的に橋で結ばれた複数の島の間で、住人を自由に移動させることができる。
# すべての島に同じ人数の住人が住むようにするために、架ける必要のある橋の本数の最小値を求めよ。

# 入力
# 入力は以下の形式で標準入力から与えられる。
# N
# a1​ a2 .. aN​

# 1 行目には、島の個数を表す整数 N (2≦N≦100) が与えられる。
# 2 行目には、整数 ai​ (0≦ai​≦100) が空白区切りで与えられる。
# これは、左から i 番目の島には ai​ 人の住人が住んでいることを表す。

# 出力

# すべての島に同じ人数の住人が住むようにするために、架ける必要のある橋の本数の最小値を
# 1 行に出力せよ。 ただし、どのように橋を架けてもすべての島に同じ人数の住人が住むようにできないならば、代わりに -1 を出力せよ。 出力の末尾には改行を入れること。

n = gets.chomp.to_i
islands = gets.chomp.split(' ').map(&:to_i)
per_island = islands.sum / n
bridges = n

current_group_people = 0
current_group_islands = 0

islands.each do |people|
  current_group_people += people
  current_group_islands += 1
  if current_group_people == current_group_islands * per_island
    bridges -= 1
    current_group_people = 0
    current_group_islands = 0
  end
end

puts islands.sum % n == 0 ? bridges : -1
