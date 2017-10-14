editor_props = {"font" => "Arial", "size" => 12, "color" => "red"}

puts editor_props.length
puts editor_props["font"]

editor_props["background"] = "Blue"
editor_props.each_pair do |key, value|
	puts "Key: #{key} value: #{value}"
end

#word frequency
word_frequency = Hash.new(0)

sentence = "Chicka chicka boom boom"
sentence.split.each do |word|
	word_frequency[word.downcase] += 1
end

p word_frequency


#Hash initialization
family_tree_19 = {oldest: "Jim", older: "Joe", younger: "Jack"}
family_tree_19[:youngest] = "Jeremy"
p family_tree_19

#Hashes as parameters
def adjust_colors(props = {foreground: "red", background: "white"})
	puts "Foreground: #{props[:foreground]}" if props[:foreground]
	puts "Background: #{props[:background]}" if props[:background]
end
adjust_colors

adjust_colors({:foregrount => "green"})
adjust_colors background: "yella"
adjust_colors :background => "magenta"