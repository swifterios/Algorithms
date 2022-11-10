// https://leetcode.com/problems/remove-all-adjacent-duplicates-in-string/

func removeDuplicates(_ s: String) -> String {
    var characterStack = [Character]()
    
    for char in s {
        guard let last = characterStack.last else {
            characterStack.append(char)
            continue
        }
        if char == last {
            characterStack.removeLast()
        } else {
            characterStack.append(char)
        }
    }
    return String(characterStack)
}

let testCase1 = "abbaca"
let testCase2 = "azxxzy"
print(removeDuplicates(testCase1))
print(removeDuplicates(testCase2))
