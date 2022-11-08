// https://leetcode.com/problems/make-the-string-great/

func makeGood(_ s: String) -> String {
    var characterStack = [Character]()
    
    for char in s {
        guard let last = characterStack.last else {
            characterStack.append(char)
            continue
        }
        if char != last && char.uppercased() == last.uppercased() {
            characterStack.removeLast()
        } else {
            characterStack.append(char)
        }
    }
    return String(characterStack)
}


let testCase1 = makeGood("leEeetcode")
let testCase2 = makeGood("abBAcC")
let testCase3 = makeGood("s")
print(testCase1)
print(testCase2)
print(testCase3)
