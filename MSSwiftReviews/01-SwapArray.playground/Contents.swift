// 01. 给一个数组，要求写一个函数，交换数组中的两个元素
// 说明：任意类型的数组

import UIKit

// (1)  2X Style
func swap(_ nums: inout [Int], _ p: Int, _ q: Int) {
    let temp = nums[p];
    nums[p] = nums[q];
    nums[q] = temp;
}

// (2) Normal Style
//func swap(_ nums: inout [T], _ p: Int, _ q: Int) {
//    let temp = nums[p];
//    nums[p] = nums[q];
//    nums[q] = temp;
//}

// (3) Swift Style
func swap(_ nums: inout[T], _ p: Int, _ q: Int) {
    (nums[p], nums[q]) = (nums[q], nums[p]);
}