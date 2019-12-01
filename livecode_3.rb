profile = {
  "first_name"   => "Cecile",
  "picture_url"  => "https://www.cecilitse.org/images/avatar-db7c2e53.png",
  "quote"        => "All you need is code",
  "super_powers" => ["Ruby wizard", "Can speak Dutch"]
}

puts "Hello"
puts "My name is #{profile["first_name"]}"
puts "> #{profile["quote"]}"
puts

puts "Super powers:"
profile["super_powers"].each do |power|
  puts "- #{power}"
end
