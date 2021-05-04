def bubbleSort(ar)
	size = ar.length
	ar.each_with_index do |item, index|
		(0...size-1-index).each do |ind|
			if (ar[ind + 1] < ar[ind])
				ar[ind], ar[ind + 1] = ar[ind+1], ar[ind]
			end
		end
	end
	ar.to_s
end

def insertion_sort(ar)
	if(ar.length == 1)
		return ar.to_s
	end

	for i in 1...ar.length
		j = i
		while (j >0)
			if(ar[j] < ar[j-1])
				ar[j-1], ar[j] = ar[j], ar[j-1]
			else
				break
			end
			j = j - 1
		end
	end
	return ar.to_s
end


def insertion_sort2(ar)
	if(ar.length == 1)
		return ar.to_s
	end

	for i in 1...ar.length
		tmp = ar[i]
		j = i
		while (j >0 && tmp < ar[j-1])
			ar[j] = ar[j-1]
			j = j - 1
		end
		ar[j] = tmp
	end
	return ar.to_s
end


puts insertion_sort2([9, 30, 2, 88, 3, 98, 45])