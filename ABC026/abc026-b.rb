# https://atcoder.jp/contests/abc026/tasks/abc026_b
# 高橋君は、丸が大好きです。今日も、原点を中心とした大きさの違う円を N 個書きました。
# その円の集合に対し、外側から赤白交互に色を塗ったとき、赤く塗られる部分の面積を出力しなさい。

# 入力
# 入力は以下の形式で標準入力から与えられる。
# N
# R1​
# R2​
# :
# RN​

# 1 行目には、円の個数を表す整数 N(1≦N≦1000) が与えられる。
# 2 行目から N 行は、円の半径の情報を表す N 個の整数が、1 行ずつ与えられる。そのうち i 番目は、 i 番目の円の半径を表す整数
# Ri​(1≦Ri​≦1000) である。
# i !=j の時、Ri​ != Rj​ を満たす。


# 出力
# 赤く塗られる部分の面積を 1 行で出力せよ。 答えは、相対誤差または絶対誤差が 10−6 以下であれば許容される。
# 出力の末尾には改行を入れること。


n = gets.chomp.to_i
add_flag = n.odd?
circles = []
radius_square = 0

n.times do
  circles.push(gets.chomp.to_i)
end

circles.sort.each do |r|
  radius_square += (add_flag ? 1 : -1) * r**2
  add_flag = !add_flag
end

puts radius_square * Math::PI
