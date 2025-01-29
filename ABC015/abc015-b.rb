# https://atcoder.jp/contests/abc015/tasks/abc015_2
# 高橋くんは、上司から
# 会社で作っている N 個のソフトウェアに平均でどれくらいのバグがあるか調べろ
# ただし、バグがないソフトは調査母数に含めるな
# と指示されました。
# しかも、上司は小数が嫌いです。とはいえ、バグ数の平均値を過小報告するわけにもいかないので、値を切り上げて報告することにしました。
# 高橋くんは、素早くバグ数の平均値をまとめて上司に報告する必要があります。
# ソフトウェアごとのバグ数が与えられるので、バグが含まれるソフトウェアの、バグ数の平均値を小数で切り上げて求めてください。

#入力
# 入力は以下の形式で標準入力から与えられる。
# N
# A1​ A2​ ... AN​

# 1 行目には、ソフトウェアの数を表す整数
# N(1≦N≦100) がスペース区切りで与えられる。
# 2 行目では、それぞれのソフトウェアに含まれるバグの数の情報が、スペース区切りで与えられる。 i 番目のソフトウェアのバグの数は、 i 番目に与えられる整数 Ai​(0≦Ai​≦100)によって与えられる。
# 与えられるソフトウェアのバグの合計数は、 1 つ以上であることが保証されている。

# 出力
# バグが含まれるソフトウェアの、バグ数の平均値を小数で切り上げて
# 1 行で出力せよ。出力の末尾には改行をいれること。

_n = gets.chomp.to_i
bugs = 0
bug_computers = 0

gets.chomp.split(' ').each do |a|
  a = a.to_i
  if a != 0
    bugs += a
    bug_computers += 1
  end
end

puts bugs.fdiv(bug_computers).ceil
