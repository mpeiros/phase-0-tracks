# Method to print a list and make it look pretty
def print_list(list)
  puts "Your grocery list:"
  # input: list
  # steps:
  # iterate through the list and print out items and quantities
  list.each { |item, quantity| puts "#{item}: #{quantity}" }
  # item: quantity
  # output: printed list in a nice format
end

# Method to create a list
# input: string of items separated by spaces (example: “carrots apples cereal pizza”)
def create_list(str)
  grocery_list = {}
  # steps:
  # split input into array
  str_array = str.split
  # iterate array and add each item to hash
  str_array.each { |item| grocery_list[item] = 1 }
  # set default quantity
  # print the list using print method and passing in hash
  # print_list(grocery_list)
  # output: return the created hash
  grocery_list
end

# puts create_list("apples pears cherries")

# Method to add an item to a list
def add_item(list, item_name, quantity=1)
  # input: list, item name, and optional quantity
  # steps:
  # check IF item is included in list
  list.include?(item_name) ? list[item_name] += quantity : list[item_name] = quantity

  # output: return the updated hash
  # puts "Here is your updated list:"
  list
end

# test_list = create_list("apples pears cherries")
# add_item(test_list, "peaches", 3)
# test_list

# Method to remove an item from the list
def remove_item(list, item_name)
  # input: list, item name
  # steps:
  # check IF item is included in list
  list.include?(item_name) ? list.delete(item_name) : puts("No #{item_name} on the list.")
  
  # output: return updated hash or the original hash
  list
end

# puts remove_item(test_list, "cars")

# Method to update the quantity of an item
def update_quantity(list, item_name, quantity)
  # input: list, item name, new quantity
  # steps:
  # check IF item is included in list
  list.include?(item_name) ? list[item_name] = quantity : puts("No #{item_name} on the list.")

  # output: return the updated hash or the original hash
  list
end

# puts update_quantity(test_list, "cars", 4)

# Test code for release 2
grocery_list = create_list("")
add_item(grocery_list, "lemonade", 2)
add_item(grocery_list, "tomatoes", 3)
add_item(grocery_list, "onions", 1)
add_item(grocery_list, "ice cream", 4)
print_list(grocery_list)
puts '-' * 40
remove_item(grocery_list, "lemonade")
print_list(grocery_list)
puts '-' * 40
update_quantity(grocery_list, "ice cream", 1)
print_list(grocery_list)
