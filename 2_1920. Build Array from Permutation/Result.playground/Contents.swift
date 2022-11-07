// https://leetcode.com/problems/build-array-from-permutation/

func buildArray(_ nums: [Int]) -> [Int] {
    var numsResult = [Int]()
    for (i, _) in nums.enumerated() {
        numsResult.append(nums[nums[i]])
    }
    return numsResult
}


let testCase1 = buildArray([0,2,1,5,3,4])
let testCase2 = buildArray([5,0,1,2,3,4])
print(testCase1)
print(testCase2)
