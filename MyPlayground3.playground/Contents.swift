var dic: Dictionary<String, String> = ["white": "白", "red": "赤", "black": "黒", "blue": "青"]
print(dic["white"]!)

dic["white"] = "siro"
print(dic["white"]!)

dic.updateValue("白", forKey: "white")
print(dic["white"]!)

for (key , value) in dic {
    print("\(key) : \(value)")
}

for i in 0..<dic.count {
    let key = Array(dic.keys)[i]
    print("\(key) : \(dic[key]!)")
}

dic.removeValue(forKey: "white")
print(dic.count)
