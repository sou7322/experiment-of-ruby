# find-minimum

# selfはあらかじめソートしておかなければならない
ary = [3, 9, 5, 1, 7, 11]
p ary.bsearch {|x| x >= 4} # => 7
p ary.bsearch {|x| x <= 4} # => 1

# 求める値がブロックパラメータの値か、それより前の値である時にtrueになるよう条件文を書かなければならない
ary = [1, 3, 5, 7, 9, 11]
# 求める値: 4
# ブロックパラメータ: x
p ary.bsearch {|x| x >= 4} # => 5
p ary.bsearch {|x| x <= 4} # => nil

ary = ['a', 'c', 'e', 'g', 'i', 'k']
p ary.bsearch {|x| x >= 'd'} # => "e"
p ary.bsearch {|x| x <= 'd'} # => nil

# find-minimum
