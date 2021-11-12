require_relative = './my_enumarable_mod.rb'

class Mylist
  extend MyEnumerable

  @list

  def initialize(*list)
    @list = list
  end
  
  def each
    @list.each do |i| 
      yield i
    end
  end
end

test = Mylist.new(1,2,3,4,5)

test.each {|elem| puts "I am yielding something very cool... Rocket nº: #{elem}"}