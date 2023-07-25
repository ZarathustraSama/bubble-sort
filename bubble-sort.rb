def bubble_sort (array)
  sorted = false
  until sorted do
    for i in 0..(array.size - 2)
      if array[i] > array[i + 1] 
        buffer_element = array[i]
        array[i] = array[i + 1]
        array[i + 1] = buffer_element
        swap = true
      end
    end
    if swap
      swap = false
    else
      sorted = true
    end
  end
  array
end

sample_array = [4,3,78,2,0,2]

p "Array before: #{sample_array}"

sorted_array = bubble_sort(sample_array)

p "Array after: #{sorted_array}"