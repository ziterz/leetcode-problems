// Created by Ziady Mubaraq on 03/01/2024

import UIKit

func reverse(_ x: Int) -> Int {
  var num: Int = x
  var reverse: Int = 0
  
  while(num != 0){
    reverse = reverse * 10
    reverse = reverse + num % 10
    num = num / 10
  }
  
  guard reverse < Int32.max && reverse > Int32.min else { return 0 }
  return reverse
}

reverse(123) // 321
reverse(1534236469) // 0
//reverse(-123) // -321
