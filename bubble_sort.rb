# frozen_string_literal: true

def bubble_sort(array)
  sorted_array = []
  until array.empty?
    array.each_with_index do |item, index|
      next unless index != array.length - 1 && item > array[index + 1]

      temp = item
      array[index] = array[index + 1]
      array[index + 1] = temp
    end
    sorted_array.prepend(array.pop)
  end
  sorted_array
end

p bubble_sort([4, 3, 78, 2, 0, 2]) #=> [0,2,2,3,4,78]
