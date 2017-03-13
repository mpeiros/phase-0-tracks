# Prompt user for name, age, address, number of kids, decor theme, favorite color, and if they can afford an interior designer
# Assign user input to variables and perform any necessary conversions
# Create a hash using the user input variables as values and print it to the user
# Prompt the user if they would like to make any updates
# If user wishes to make an update
#   Prompt user for new value and update the hash with the new value
# Print out the new version of the hash for the user

print "Enter the client's name: "
name = gets.chomp

print "Enter the client's age: "
age = gets.chomp.to_i

print "Enter how many kids the client has: "
num_kids = gets.chomp.to_i

print "Enter the client's preferred decor theme: "
decor_theme = gets.chomp

print "Enter the client's favorite color: "
fav_color = gets.chomp

print "Can the client afford an interior designer? "
if gets.chomp.downcase == "yes"
  afford = true
else
  afford = false
end

client = {
  name: name,
  age: age,
  num_kids: num_kids,
  decor_theme: decor_theme,
  fav_color: fav_color,
  afford: afford
}

puts client