# https://atcoder.jp/contests/abc012/tasks/abc012_2
# 高橋君は、お風呂で湯船に浸かった秒数を数える習慣があります。
# 今日は、高橋君は湯船で N 秒まで数えました。
# しかし、秒だと解りにくいので、何時間何分何秒、という形に直したいです。
# 秒数 N が与えられるので、
# hh:mm:ss の形式に変換しなさい。
# 
# 入力
# 入力は以下の形式で標準入力から与えられる。
# N
#
# 1 行目には、高橋君が湯船に浸かった秒数を表す整数 N(0≦N≦86399) が与えられる。
#
# 出力
# 高橋君が湯船に浸かっていた時間を、hh:mm:ss の形式で、
# 1 行で出力せよ。出力の末尾には改行をいれること。

def format_num(num)
  num >= 10 ? num.to_s : "0#{num}"
end

n = gets.chomp.to_i
answer = ''

answer += format_num(n / 3600)
n %= 3600

answer += ":#{format_num(n / 60)}"
n %= 60

answer += ":#{format_num(n)}"

puts answer
