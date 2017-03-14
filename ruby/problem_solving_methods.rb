def search_array(int_arr, int)
  index = 0
  while index < int_arr.length
    if int_arr[index] == int
      return index
    end
    index += 1
  end
  nil
end

arr = [42, 89, 23, 1]
p search_array(arr, 1)
p search_array(arr, 24)

def fib(int)
  fib_arr = []
  i = 0
  while i < int
    if i == 0 || i == 1
      fib_arr << i
    else
      fib_arr << (fib_arr[i-2] + fib_arr[i - 1])
    end
    i += 1
  end
  fib_arr
end

p fib(6)
p fib(100).last == 218922995834555169026

# Bubble Sort
# start at the first element of the array
# compare to the next element
#   if its smaller, leave it
#   if its larger, swap
# move one index up
#   perform same comparison, swap if necessary
#   repeat until there is no next index
# go back to the beginning index and repeat the above instructions up to last index minus one
# repeat until you reach sorted portion of array
# repeat array.length times

def bubble_sort(int_arr)
  length = int_arr.length - 1
  loop do
    sorted = true
    for i in 0...length
      current_value = int_arr[i]
      if int_arr[i] > int_arr[i + 1]
        int_arr[i] = int_arr[i + 1]
        int_arr[i + 1] = current_value
        sorted = false
      end
    end
    break if sorted == true
    length -= 1
  end
  int_arr
end

nums = [10, 1, 4, 5, 9, 7, 3, 2, -8, -6]
p bubble_sort(nums)
