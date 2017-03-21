# Method to print a list and make it look pretty
def print_list(list)
  puts "Your grocery list:"
  # input: list
  # steps:
  # iterate through the list and print out items and quantities
  list.each { |item, quantity| puts "#{item}: #{quantity}" }
  # output: printed list in a nice format
end

# Method to create a list
# input: string of items separated by spaces (example: “carrots apples cereal pizza”)
def create_list(str)
  grocery_list = {}
  # steps:
  # split input into array
  str_array = str.split

  # iterate through array and add each item to hash
  # set default quantity
  str_array.each { |item| grocery_list[item] = 1 }
 
  # output: return the created hash
  grocery_list
end

# Method to add an item to a list
# input: list, item name, and optional quantity
def add_item(list, item_name, quantity = 1)
  # steps:
  # check IF item is included in list
    # increment item by quantity
    # ELSE - set item as new key and assign it to quantity as value
  list.include?(item_name) ? list[item_name] += quantity : list[item_name] = quantity

  # output: return the updated hash
  list
end

# Method to remove an item from the list
# input: list, item name
def remove_item(list, item_name)
  # steps:
  # check IF item is included in list
    # delete the item
    # ELSE, print a message to the user
  list.include?(item_name) ? list.delete(item_name) : puts("No #{item_name} on the list.")
  
  # output: return updated hash or the original hash
  list
end

# Method to update the quantity of an item
# input: list, item name, new quantity
def update_quantity(list, item_name, quantity)
  # steps:
  # check IF item is included in list
    # update the item’s quantity
    # ELSE, print a message to the user
  list.include?(item_name) ? list[item_name] = quantity : puts("No #{item_name} on the list.")

  # output: return the updated hash or the original hash
  list
end

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


