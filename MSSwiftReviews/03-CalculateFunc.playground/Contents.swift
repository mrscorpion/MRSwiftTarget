// 03. 实现一个函数，输入是任一整数，正确输出

import UIKit

// 03. 实现一个函数，输入是任一整数，输出要返回输入的整数 + 2
// 2X Style
func addTwo(_ num: Int) -> Int {
    return num + 2
}

// 利用 Swift 的柯西特性
func add(_ num: Int) -> (Int) -> Int {
    return { val in
        return num + val
    }
}
let add2 = add(2), add4 = add(4), add6 = add(6)

