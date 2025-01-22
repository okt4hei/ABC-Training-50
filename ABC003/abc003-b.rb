# https://atcoder.jp/contests/abc003/tasks/abc003_2
# AtCoder社では 1 人で行うトランプを使ったゲームが流行っています。
# AtCoder社特製トランプでは、各カードにアルファベット小文字 1 文字（a～z）、または@の文字が書かれています。

# ゲームは以下の手順で行います。
#
#    1. カードを同じ枚数ずつ 2 列に並べて文字列を2 つ作ります。
#    2. @のカードは、それぞれa,t,c,o,d,e,rのどれかのカードと置き換えます。
#    3. 2 つの列が指し示す文字列が同じであれば勝ち、同じでなければ負けです。
#
# 手順 1. で並べられた
# 2 つの列が指し示す2つの文字列与えられるので、適切に@を置き換えて、このゲームで勝つことができるかどうかを判定するプログラムを書いてください。
#
# 入力
# 入力は以下の形式で標準入力から与えられる。
#
# S
# T
# 1 行目には、1 列目のトランプが表す文字列S が与えられる。
# 2 行目には、2 列目のトランプが表す文字列T が与えられる。
#
# S、T ともにアルファベット小文字、および、@のみから構成されることが保証される。
# S、T の文字数は等しく、1 文字以上、10文字以下であることが保証される。
#
# 出力
# このゲームで勝つことが可能であればYou can winと、不可能であればYou will loseと（シングルクォーテーションを除いて）
# 1 行で出力せよ。 また、出力の末尾には改行を入れること。

s = gets.chomp
t = gets.chomp
replaceable = 'atcoder'.split('').to_set

flag = true
s.chars.each.with_index do |c, i|
  other = t[i]
  next if c == other || (c == '@' && replaceable.include?(other)) || (other == '@' && replaceable.include?(c))

  flag = false
  break
end

puts flag ? 'You can win' : 'You will lose'
