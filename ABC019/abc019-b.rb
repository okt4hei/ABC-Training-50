# https://atcoder.jp/contests/abc019/tasks/abc019_2
# 高橋くんはある文字列 s を持っています。文字列を短く表現することに興味のある高橋くんは、以下の圧縮方法を試してみることにしました。
# 文字列 s を同じ文字が連続する文字列に分割します。（分割）
# 分割された各文字列を、文字と、その文字が連続する長さをつなげた新たな文字列に変換します。（変換）
# 最後に、変換した各文字列を前から順に結合します。（結合）
# aabbbaad という文字列に上記の圧縮方法を適用すると
# aabbbaad を aa bbb aa d に分割
# aa bbb aa d を、それぞれ a2 b3 a2 d1 に変換
# a2 b3 a2 d1 を a2b3a2d1 と結合
# 以上より、a2b3a2d1 を得ることができます。
# あなたには文字列 s が与えられるので、上記の方法で圧縮された文字列を求めるプログラムを、高橋くんの代わりに書いてください。

# 入力
# 入力は以下の形式で標準入力から与えられる。
# s

# 圧縮する文字列 s(1≦∣s∣≦1,000) が与えられる(∣s∣ は文字列 s の長さを表す)。
# s は英小文字から成る文字列であることが保証される。

# 出力
# s から作られた圧縮された文字列を標準出力に出力せよ。
# 末尾の改行を忘れないこと。

s = gets.chomp
answer = ''
current_target = s[0]
repeat = 1
s.chars[1..].each do |c|
  if c == current_target
    repeat += 1
  else
    answer += current_target + repeat.to_s
    current_target = c
    repeat = 1
  end
end

answer += current_target + repeat.to_s

puts answer
