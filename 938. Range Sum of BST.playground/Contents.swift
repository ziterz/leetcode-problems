// Created by Ziady Mubaraq on 08/01/24

import UIKit

/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
public class TreeNode {
  public var val: Int
  public var left: TreeNode?
  public var right: TreeNode?
  public init() { self.val = 0; self.left = nil; self.right = nil; }
  public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
  public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
    self.val = val
    self.left = left
    self.right = right
  }
}

class Solution {
  func rangeSumBST(_ root: TreeNode?, _ low: Int, _ high: Int) -> Int {
    guard let root = root else { return 0 }
    return ((root.val >= low && root.val <= high) ? root.val : 0) + rangeSumBST(root.left, low, high) + rangeSumBST(root.right, low, high)
  }
}

let solution = Solution()
solution.rangeSumBST(TreeNode(10,TreeNode(5,TreeNode(3),TreeNode(7)),TreeNode(15,TreeNode(),TreeNode(18))), 7, 15) // 32
solution.rangeSumBST(TreeNode(10, TreeNode(5, TreeNode(3, TreeNode(1), TreeNode(5)), TreeNode(7, TreeNode(6), TreeNode())), TreeNode(15, TreeNode(13), TreeNode(18))), 6, 10) // 23
