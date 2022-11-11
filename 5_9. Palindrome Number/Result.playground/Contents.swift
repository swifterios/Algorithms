// https://leetcode.com/problems/palindrome-number/

func isPalindrome(_ x: Int) -> Bool {
    var array = Array(String(x))
    let endIndex = array.endIndex - 1
    let len = array.count / 2
    
    for i in 0 ..< len {
        if array[i] != array[endIndex - i] {
            return false
        }
    }
    return true
}

let testCase1 = 121
let testCase2 = -121
let testCase3 = 10
print(isPalindrome(testCase1))
print(isPalindrome(testCase2))
print(isPalindrome(testCase3))
