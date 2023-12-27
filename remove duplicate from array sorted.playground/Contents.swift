import UIKit

//func removeDuplicates(_ nums: inout [Int]) -> Int {
//  var n = 0
//  for (index, num) in nums.enumerated() {
//    if index < nums.count-1 {
//      if num == nums[index+1] {
//          nums[index] = 99
//          n += 1
//      } else {
//        continue
//      }
//    }
//  }
//  nums.removeAll(where: { $0 == 99 })
//  print(nums)
//  return n+1
//}

//func removeDuplicates(_ nums: inout [Int]) -> Int {
//  var idx = 0
//  for n in nums where n != nums[idx] {
//    idx += 1
//    nums[idx] = n
//  }
//  print(nums)
//  return idx + 1
//}

func removeDuplicates(_ nums: inout [Int]) -> Int {
  var k = 0
  
  for i in 0..<nums.count {
    if nums[i] == nums[k] { continue }
    nums.swapAt(k+1, i)
    k += 1
  }
  print(nums)
  return k + 1
}

var value = [1,1,2]
print(removeDuplicates(&value))
