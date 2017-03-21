# Method to print a list and make it look pretty
# input: list
def print_list(list)
  puts "Your grocery list:"
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
grocery_list = create_list("apples oranges milk")
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

# Release 4: Reflect
# 1. I learned that pseudocode is a nice way to lay out the design of your entire program before writing the actual code. It can also make the code itself easier to write.
# 2. A hash makes more sense for this challenge as an item name and its quantity is a logical key-value pair. Also, it makes sense that you would want to access the item by its name. If you had used an array, it would have required nesting [item, quantity] arrays inside the list array or tracking the index of each item and its associated quantity, both of which would be more complex than just using a hash.
# 3. A method returns its last evaluated expression. A method can return early through use of the explicit return keyword.
# 4. You can pass anything you want - integers, strings, hashes, arrays, etc.
# 5. You can pass information between methods by passing in the right arguments (and having the methods require the right parameters as well). For example, the information in the grocery_list hash created above is passed between the different methods by passing the grocery_list hash to each method as an argument.
# 6. I think the concept of pass by reference was solidified with this challenge. I also became more comfortable with the ternary operator and learned the importance of method return values to testing. I think I have a solid grasp of the concepts in this challenge and do not have any confusion at the moment.
