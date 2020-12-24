array = [3, 1, 2, 4]

def merge_sort(array)
  #Base case
  return array if array.length <= 1
  #Variable for define middle of array
  middle = array.length / 2
  #recursive case
  merge(merge_sort(array[0...middle]), merge_sort(array[middle..-1]))#Ranges constructed using .. run from the beginning to the end inclusively. Those created using ... exclude the end value.

end

#Method for merge the arrays
def merge(left_array, right_array)
  #Declear an array for holding result
  rusult = []
  until left_array.length == 0 || right_array.length == 0 do
    rusult << (left_array.first <= right_array.first ? left_array.shift : right_array.shift)
  end
  rusult + left_array + right_array
end

p merge_sort(array)