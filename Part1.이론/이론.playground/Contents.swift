let numbers = [1, 2, 3, 4]
let mapArr = numbers.map { (number) -> Int in
    return number * 2
}

print(mapArr) // 2, 4, 6, 8

let intArr = [10, 2, 30, 24, 5]
let filterArr = intArr.filter { $0 > 5 }
print(filterArr) //

let someArr = [1, 2, 3, 4, 5]
let reduceResult = someArr.reduce(0){(result: Int, element: Int) -> Int in
    print(result, element)
    return result + element
}

print(reduceResult)

let someArr2 = [1, 2, 3, 4, 5]
let reduceResult2 = someArr.reduce(2){(result: Int, element: Int) -> Int in
    print(result, element)
    return result + element
}

print(reduceResult2)
