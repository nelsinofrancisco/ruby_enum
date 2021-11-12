require_relative 'my_enumerable_mod'

class Mylist
  include MyEnumerable

  attr_accessor :list, :name

  @rules = [[:@list, :array, :not_null]]

  def initialize(*list)
    @list = list
  end
  
  def each
    return unless block_given?

    @list.each do |i| 
      yield i
    end
  end
end

list = Mylist.new(1,2,3,4)

puts list.all? {|e| e < 5}