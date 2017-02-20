class Wut
  ATTRIBUTES  = [:one, :two, :thr, :fou, :fiv, :six, :sev, :eig, :nin, :ten].freeze unless defined? ATTRIBUTES
  SAMPLE      = 50000 unless defined? SAMPLE
  attr_accessor *ATTRIBUTES
end

SAMPLE.times do
  h = Hash.new
  Wut::ATTRIBUTES.each{ |a| h[a] = rand(10) }
  Wut::ATTRIBUTES.map{  |a| h[a]}.inject(&:+)
end
