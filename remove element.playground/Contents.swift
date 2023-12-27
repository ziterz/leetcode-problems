// Created by Ziady Mubaraq on 27/12/2023

import UIKit

func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
  var numsRow: Int = nums.count
  var count: Int = 0
  for i in nums {
    if i == val {
    count += 1
    }
  }
  for _ in 0...count {
    nums.removeAll(where: { $0 == val })
  }
  print(nums)
  return numsRow-count
}
