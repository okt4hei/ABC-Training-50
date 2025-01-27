# https://atcoder.jp/contests/abc017/tasks/abc017_2
# 高橋君は、ある日不思議な生物を見た。
# その生物は choku 語という言語を用いていることがわかった。
# 文字列 S が以下の条件を満たしているときに S は choku 語であると定義する。

# 文字列 S が空文字列であるとき。
# 文字列 S が、choku 語である文字列 T の末尾に ch をつけた文字列であるとき。
# 文字列 S が、choku 語である文字列 T の末尾に o をつけた文字列であるとき。
# 文字列 S が、choku 語である文字列 T の末尾に k をつけた文字列であるとき。
# 文字列 S が、choku 語である文字列 T の末尾に u をつけた文字列であるとき。

# choku 語の理解を深めるため、与えられた文字列が choku 語であるかを判定するプログラムを作成することにした。
# 入力
# 入力は以下の形式で標準入力から与えられる。
# X

# 1 行目には、choku 語か判定したい文字列
# X(1≦∣X∣≦50) が与えられる。
# X は半角小文字アルファベットのみで構成されている。

# 出力
# X が choku 語なら文字列 YES を、そうでないなら文字列 NO を 1 行に出力せよ。出力の末尾にも改行を入れること。


# o or k or uなら1を、chなら2を返す
def judge(s)
  return 1 if %w[o k u].include?(s[0])
  return 2 if s[..1] == 'ch'

  -1
end

s = gets.chomp
invalid_flag = false
until s.empty?
  next_index = judge(s)
  if next_index == -1
    invalid_flag = true
    break
  end

  s = s[next_index..]
end

puts invalid_flag ? 'NO' : 'YES'
