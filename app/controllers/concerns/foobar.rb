class Foobar
  def self.baz(array)
		a = array.map { |x| x.to_i }
        a.each { |i| i+=2 }
        a.delete_if {|x| x.odd?}
        a.uniq
        a.delete_if {|x| x > 10 }
        return a.sum
  end
#["1", "2", "3", "3", "4", "5", "10", "11", "100"]
#[4,6]
end