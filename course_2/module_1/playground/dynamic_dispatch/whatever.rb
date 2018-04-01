class Whatever
  define_method :make_it_up do
    puts "Whatever..."
  end
end

wt = Whatever.new
wt.make_it_up
