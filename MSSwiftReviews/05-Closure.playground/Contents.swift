// 05. 以下函数会打印出什么？

import UIKit

var car = "Benz"
let closure = { [car] in
    print("I drive \(car)")
}
car = "Tesla"
closure()
// 因为 clousre 已经申明将 car 复制进去了（[car]），此时clousre 里的 car 是个局部变量，不再与外面的 car有关，所以会打印出”I drive Benz”。

var car2 = "Rove"
let closure2 = {
    print("I drive \(car2)")
}
car2 = "Bin"
closure2()
// 此时 closure 没有申明复制拷贝 car，所以clousre 用的还是全局的 car 变量，此时将会打印出 “I drive Bin”

