// Created by Ziady Mubaraq on 27/12/2023

import UIKit

func minOperations(_ s: String) -> Int {
  let array = Array(s)
  var count = 0
  for i in 0..<array.count {
    if array[i] == "0" && i % 2 == 0 {
      count += 1
    }
    if array[i] == "1" && i % 2 != 0 {
      count += 1
    }
  }
  return min(count, array.count-count)
}
