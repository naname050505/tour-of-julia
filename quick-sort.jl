function quicksort!(xs, lo, hi)
    if lo < hi
        p = partition(xs,lo,hi)
        quicksort!(xs, lo, p-1)
        quicksort!(xs, p+1, hi)
    end
    return xs
end


function partition(xs, lo, hi)
    pivot = div(lo + hi, 2)
    pvalue = xs[pivot]
    xs[pivot], xs[hi] = xs[hi], xs[pivot]
    j = lo
    @inbounds for i in lo:hi-1
        if xs[i] <= pvalue
            xs[i], xs[j] = xs[j], xs[i]
            j += 1
        end
    end
    xs[j], xs[hi] = xs[hi], xs[j]
    return j
end

quicksort(xs) = quicksort!(copy(xs))
quicksort!(xs) = quicksort!(xs, 1, length(xs))

a = [-2.1, 3.4, 5.0, -1.2, 3.1, 0.1]
println(a)
println(quicksort(a))
