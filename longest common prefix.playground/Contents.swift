import UIKit

func longestCommonPrefix(_ strs: [String]) -> String {
  // Return an empty string
  if strs.count == 0 { return "" }
  
  // Set as the default
  var prefix = strs[0]
  
  // Loop through the array of strings
  for word in strs {
    
    // Look at each character individually
    for _ in 0..<word.count {
      
      // Check if the string does not start with the specified prefix
      if !word.hasPrefix(prefix) {
        prefix = String(prefix.dropLast())
      }
  }
  return prefix
}

let value = longestCommonPrefix(["flower","flow","flight"])
