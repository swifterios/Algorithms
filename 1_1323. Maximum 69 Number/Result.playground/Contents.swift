func maximum69Number(_ num: Int) -> Int {
    var numString = String(num)
    var resultString = ""
    var alreadyChanged = false
    
    for num in numString {
        if !alreadyChanged {
            if num == "6" {
                alreadyChanged = true
                resultString.append("9")
                continue
            }
        }
        resultString.append(num)
    }
    
    guard let result = Int(resultString) else { return num }
    return result
}

let testCase1 = maximum69Number(9669)
let testCase2 = maximum69Number(9996)
let testCase3 = maximum69Number(9999)
