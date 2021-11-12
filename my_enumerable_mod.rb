module MyEnumerable
  def self.included klass
    klass.singleton_class.send(:attr_reader, :rules)
  end

  def all?
    return unless block_given?
    value = false

    if self.class.rules[0][1] = 'array'
      self.instance_variable_get(self.class.rules[0][0]).each do |elem|
        value = true if yield elem
      end
    end

    return value
  end
end