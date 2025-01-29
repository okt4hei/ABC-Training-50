# https://atcoder.jp/contests/abc022/tasks/abc022_b
# 高橋君はマルハナバチ(Bumblebee)という種類のミツバチです。
# 今日も花の蜜を求めて異なる N 個の花を訪れました。
# 高橋君が i 番目に訪れた花の種類は Ai​ です。
# i 番目の花は、i>j かつ i 番目の花の種類と j 番目の花の種類が同じになるような j が存在すれば受粉します。
# 高橋君が訪れた N 個の花の種類の情報が与えられるので、そのうちいくつの花が受粉したか求めてください。
# なお、高橋君以外による受粉や自家受粉を考える必要はありません。

# 入力
# 入力は以下の形式で標準入力から与えられる
# N
# A1​
# A2​
# :
# AN​

# 1 行目には高橋君が訪れた花の個数を表す整数 N(1≦N≦105) が与えられる。
# 2 行目からの N 行のうち i 行目には i 番目に高橋君が訪れた花の種類を表す整数 Ai​(1≦Ai​≦105) が与えられる。

# 出力
# 受粉した花の個数を 1 行で出力せよ。出力の末尾にも改行を入れること。

require 'set'

n = gets.chomp.to_i
visited = [].to_set
answer = 0
n.times do
  blossom = gets.chomp
  answer += 1 if visited.include?(blossom)
  visited.add(blossom)
end

puts answer
