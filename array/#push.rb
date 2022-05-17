require "benchmark"

# Array#push と Array#<< はどちらが早いか？
Benchmark.bm do |x|
  x.report("#push_01") {
    100000.times {|n| [].push(n) }
  }

  x.report("#<<_01") {
    100000.times {|n| [] << n }
  }

  # 引数が2個以上の場合
  x.report("#push_02") {
    100000.times { [].push(1, 2, 3, 4, 5, 6, 7, 8, 9, 10) }
  }

  x.report("#<<_02") {
    100000.times { [] <<1<<2<<3<<4<<5<<6<<7<<8<<9<<10 }
  }
end

=begin
  user      system     total      real
  #push_01  0.017360   0.000378   0.017738 (  0.020230)
  #<<_01    0.016932   0.000390   0.017322 (  0.020488)
  => 引数が1個の場合#<<の方がわずかに早い

  #push_02  0.026079   0.001431   0.027510 (  0.031321)
  #<<_02    0.041176   0.000916   0.042092 (  0.049888)
  => #<<は引数を1つしか指定できないため、引数が2個以上の場合単純に処理の実行量が増えてしまい遅くなる
=end