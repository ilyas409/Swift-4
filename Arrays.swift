// empty array:
var intArray: [Int] = []

let num_elements = intArray.size

// sum array (or apply any operation to reduce an array to a single value):
let nums = [1,2,3,4]
let sum = nums.reduce(0, +)
let products = nums.reduce(1, *)

// regular for loop 
for i in 0...n-1{ // n would be included unlike Python
}

// iterate through an array
for n in nums{
}
// with enumeration
for (i, n) in nums.enuerated(){
}

func maxSubArray(_ nums: [Int]) -> Int {
    var max_sum = nums[0]
    var cur_sum = nums[0]
    
    // in Swift it's import to check if a range
    // can be formed (unlike Python)
    if nums.count < 2{
        return max_sum
    }
    
    for i in 1...nums.count - 1{
        cur_sum = max(cur_sum + nums[i], nums[i])
        max_sum = max(max_sum, cur_sum)
    }
    return max_sum   
}
