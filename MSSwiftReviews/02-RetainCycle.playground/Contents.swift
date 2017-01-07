// 02. 下面代码有什么问题? 如何解决?

import UIKit

// ❌ 错误写法
public class Node {
    public var value: Int
    public var prev: Node?
    public var post: Node?
    
    public init(_ value: Int) {
        self.value = value
    }
}

// 测试用例
let head = Node(0);
let tail = Node(1);
head.post = tail;
tail.prev = head;

// 问题： head 和 tail 互相指向，形成循环引用（retain cycle）
// 解决： 在 var prev 或 var post 前面加上 weak。
// ✅正确写法
public class Node2 {
    public var value: Int
    public weak var prev: Node2?
    public var post: Node2?
    
    public init(_ value: Int) {
        self.value = value
    }
}
		