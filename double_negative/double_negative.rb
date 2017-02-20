require 'benchmark'

LARGEISH    = 10000000.freeze
TEST_OBJECT = "a string".freeze

define_method("!!") do |obj|
  obj ? true : false
end

Benchmark.bm do |x|
  x.report("bang bang:           ") do
    LARGEISH.times do
      ! ! TEST_OBJECT
    end
  end
  x.report("double bang operator:") do
    LARGEISH.times do
      !! TEST_OBJECT
    end
  end
end

# > ruby double_negative.rb
#        user     system      total        real
# bang bang:             0.540000   0.000000   0.540000 (  0.531387)
# double bang operator:  0.520000   0.000000   0.520000 (  0.519793)
