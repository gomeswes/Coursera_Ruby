Customer = Struct.new(:name, :address) do
    def to_s
      "#{name} live at #{address}"
    end
end

jim = Customer.new("Jim", "-1000 Wall Street")
puts jim

require "ostruct"
some_obj = OpenStruct.new(name: "Joe", age: 15)
some_obj.sure = "three"
some_obj.really = "yes, it is true"
some_obj.not_only_strings = 10

puts "#{some_obj.name} #{some_obj.age} #{some_obj.really}"