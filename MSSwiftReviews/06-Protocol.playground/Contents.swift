// 06. 以下代码会打印出什么？

import UIKit

protocol Pizzeria {
    func makePizza(_ ingredients: [String])
    func makeMargherita()
}

extension Pizzeria {
    func makeMargherita() {
        return makePizza(["tomato", "mozzarella"])
    }
}

struct Lombardis: Pizzeria {
    func makePizza(_ ingredients: [String]) {
        print(ingredients)
    }
    func makeMargherita() {
        return makePizza(["tomato", "basil", "mozzarella"])
    }
}

let lombardis1: Pizzeria = Lombardis()
let lombardis2: Lombardis = Lombardis()
lombardis1.makeMargherita()
lombardis2.makeMargherita()

		