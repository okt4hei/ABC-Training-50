# https://atcoder.jp/contests/abc030/tasks/abc030_b
# n 時 m 分のアナログ時計があります。短針と長針のなす角度のうち小さい方を度数法で求めてください。

# 入力
# 入力は以下の形式で標準入力から与えられる。
# n m

# 1 行目には、アナログ時計の時刻を表す整数 n,m(0≦n≦23,0≦m≦59) が空白区切りで書かれている。

# 出力
# 短針と長針のなす角度を 1 行目に出力せよ。
# 絶対誤差または相対誤差が 10−4 以下であれば許容される。
# 末尾の改行を忘れないこと。

def min(a, b)
  a < b ? a : b
end

n, m = gets.chomp.split(' ').map(&:to_i)
n_position = (n % 12 * 5) + m.fdiv(12)
angle = (m - n_position).abs * 6

puts min(angle, 360 - angle)
