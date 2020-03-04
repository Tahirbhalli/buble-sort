arr=[2,6,1,8,12,4,9]

def bublesort(arr)
    i=0
    a=0
    
    while a<arr.length
        i=1
        while i < arr.length-a
            if arr[i-1] > arr[i]
                temp=arr[i]
                arr[i]=arr[i-1]
                arr[i-1]=temp
            end
            i=i+1
        end
        a=a+1
    end
  
end

bublesort(arr)


for element in arr
    print (element.to_s+" ")
end
puts "\n\n"

def bubble_sort_by(r)
    (r.length-1).times do |i|
        (r.length-i-1).times do |j|
            result=yield(r[j],r[j+1])
            next unless result.positive?
            temp=r[j]
            r[j]=r[j+1]
            r[j+1]=temp
        end
    end
    for element in r
        print (element.to_s+" ")
    end
end
arr2=["tahir","am","i"]
bubble_sort_by(arr2) do |left,right|
left.length-right.length
end
