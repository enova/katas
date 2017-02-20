class Wut
  ATTRIBUTES  = [:one, :two, :thr, :fou, :fiv, :six, :sev, :eig, :nin, :ten].freeze unless defined? ATTRIBUTES
  SAMPLE      = 50000 unless defined? SAMPLE
  attr_accessor *ATTRIBUTES
end

SAMPLE.times do
  f = Wut.new
  Wut::ATTRIBUTES.each{ |a| f.send("#{a}=", rand(10)) }
  Wut::ATTRIBUTES.map{  |a| f.send(a) }.inject(&:+)
end
