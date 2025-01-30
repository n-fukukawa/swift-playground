var array: Array<Int> = Array<Int>([1, 2, 3, 4, 5])

for item in array {
    print(item)
}

array.append(6)
print("要素数：\(array.count)")

array.insert(0, at: 0)
print(array)

array.remove(at: 3)
print(array)

array.removeSubrange(1...3)
print(array)

array = [1, 2, 3, 4, 5]
array = array.map {$0 * 2}
print(array)

let sum: Int = array.reduce(0, {$0 + $1})
print(sum)

array.sort{$0 < $1}
print(array)

array.sort{$0 > $1}
print(array)

array.sort(by: {(a: Int, b: Int) -> Bool in return a < b})
print(array)

for (index, value) in array.enumerated() {
    print("\(index): \(value)")
}

print(array.filter { $0 > 5 })
