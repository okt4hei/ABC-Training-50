# https://atcoder.jp/contests/abc006/tasks/abc006_2
# トリボナッチ数列というものがあります。この数列は3つ前までの数字を足したものです。
# 厳密には、
# a1​=0, a2​=0, a3​=1
# an​=an−1​+an−2​+an−3​
# と定義されています。参考までに、トリボナッチ数列表を掲載します。
#
# a1​ a2​ a3​ a4 a5 a6 a7​ a8 ... an​
# 0  0 	1  1 	2  4  7  13 ... an−1​+an−2​+an−3​
#
# この数列の第 n 項、an​ を 10007 で割った余りを求めてください。
#
# 入力
# 入力は以下の形式で標準入力から与えられる。
# n
# 整数 n(1≦n≦106) が
# 1 行で与えられる。
#
# 出力
# トリボナッチ数列の第 n 項、an​ を 10007 で割った余りを 1 行で出力してください。
# また、出力の末尾には改行を入れること。

def tribonacci(n)
  return 0 if n == 1 || n == 2

  an = 1
  an1 = 0
  an2 = 0

  (n - 3).times do
    an, an1, an2 = tribonacci_next(an, an1, an2)
  end

  return an
end

def tribonacci_next(a, b, c)
  [(a + b + c) % 10007, a, b]
end

puts tribonacci(gets.chomp.to_i)
