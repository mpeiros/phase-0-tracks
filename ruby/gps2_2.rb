# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # split input into array
  # iterate array and add each item to hash
  # set default quantity
  # print the list using print method and passing in hash
# output: return the created hash

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
  # check IF item is included in list
    # increment item by quantity
    # ELSE - set item as new key and assign it to quantity as value
# output: return the updated hash

# Method to remove an item from the list
# input: list, item name
# steps:
  # check IF item is included in list
    # delete the item
    # ELSE, print a message to the user
# output: return updated hash or the original hash

# Method to update the quantity of an item
# input: list, item name, new quantity
# steps:
  # check IF item is included in list
    # update the item's quantity
    # ELSE, print a message to the user
# output: return the updated hash or the original hash

# Method to print a list and make it look pretty
# input: list
# steps: 
  # iterate through the list and print out items and quantities
    # item: quantity
# output: printed list in a nice format
