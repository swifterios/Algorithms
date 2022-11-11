// https://leetcode.com/problems/binary-search/

func search(_ nums: [Int], _ target: Int) -> Int {
    var leftIndex = 0
    var rightIndex = nums.count - 1
    
    while leftIndex <= rightIndex {
        var midIndex = (leftIndex + rightIndex) / 2

        if nums[midIndex] == target { return midIndex }
        
        if nums[midIndex] > target {
            rightIndex = midIndex - 1
        }
        
        if nums[midIndex] < target {
            leftIndex = midIndex + 1
        }
    }
    return -1
}

let testCase1 = [-1,0,3,5,9,12]
let testTarget1 = 9
let testCase2 = [-1,0,3,5,9,12]
let testTarget2 = 2
print(search(testCase1, testTarget1))
print(search(testCase2, testTarget2))
