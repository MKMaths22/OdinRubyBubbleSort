#first define what it means to swap two consecutive values in an array at positions index and index + 1 if needed
def swapif(array,index)
    first_value = array[index];
    second_value = array[index + 1];
    if (second_value < first_value)
      array[index] = second_value;
      array[index + 1] = first_value;
    end
    return array;
end
def bubble_sort(array) 
  return array if (array.length <= 1);
  #the base case of the recursion
      for i in 0..array.length - 2 do
        swapif(array,i);
      end
  #one pass of conditional swaps of consecutive array values, now maximum value is last value and
  #will never be moved again
    result = bubble_sort(array.slice(0,array.length - 1));
    #we bubble sort the array which is one element shorter
    result.push(array[-1]);
    #put the final element from the first pass back on to the end and return the resulting array
    return result;
end

