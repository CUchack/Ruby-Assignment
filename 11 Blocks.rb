class CartesianProduct

  include Enumerable

  attr_reader :l_enum, :r_enum

  def initialize(l_enum, r_enum)
    @l_enum = l_enum
    @r_enum = r_enum
  end

  def each
    self.l_enum.each {
      |l| self.r_enum.each {
        |r| yield [l, r]
      }
    }
  end

end

puts 'calling cartesian product like this:

c = CartesianProduct.new([:a,:b], [4,5])

c.each { |elt| puts elt.inspect }

result:'

c = CartesianProduct.new([:a,:b], [4,5])

c.each { |elt| puts elt.inspect }

puts 'calling cartesian product like this:

c = CartesianProduct.new([:a,:b,:C],[4,3,5,6])

c.each { |elt| puts elt.inspect }

result:'
c = CartesianProduct.new([:a,:b,:C],[4,3,5,6])

c.each { |elt| puts elt.inspect }
