
# I followed this geeks for geeks tutorial to make it 
#  bubble sort more interesting
# https://www.geeksforgeeks.org/recursive-bubble-sort/
# I used the python code to give me a blueprint on how to make 
#  bubble sort recursive in ruby
def bubble_sort_recursive(nums, elements=nil)
  # This is to dynamically count the array len without the user 
  #  giving passing it to the method
  if elements == nil
    elements = nums.length 
  end
  count = 0
  if elements == 1
    return nums
  end
  for i in 0..elements-2
    # I think I can make these ternary operators 
    # but I need to learn more ruby syntax
  # ------- COMEBACK -------
    if nums[i] > nums[i + 1]
      firstSwap = nums[i]
      secondSwap = nums[i + 1]
      nums[i] = secondSwap
      nums[i + 1] = firstSwap
      count+=1
    end
  end
  if count == 0
    return nums
  end
  bubble_sort_recursive(nums, elements - 1)
end

def bubble_sort(numArr)
  print "Original Array: "
  print numArr
  print "\n"
  sortedArray = bubble_sort_recursive(numArr)
  print "Sorted Array: "
  print sortedArray
end

