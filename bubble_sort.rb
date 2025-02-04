def bubble_sort(arr)
  loop do
    swapped = false


    arr.each_cons(2).with_index do |(current, next_num), index|
      if current > next_num
        arr[index], arr[index + 1] = next_num, current
        arr[index], arr[index + 1] =  arr[index + 1], arr[index]
        swapped = true
      end
    end

    break unless swapped
  end
  p arr
end

bubble_sort([4,3,78,2,0,2])