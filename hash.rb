sample_hash = {'a' => 1, 'b' => 2, 'c' => 3}
my_details = {:name => 'Nicholas', :favfoodou
   => 'pie'}
p my_details['b']

my_details.each do |key, value|
  puts "The class for key is #{key.class} and the value is #{value.class}"
end
