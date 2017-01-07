// 04. 精简以下代码

import UIKit

func divide(dividend: Double?, by divisor: Double?) -> Double? {
    if dividend == nil {
        return nil
    }
    if divisor == nil {
        return nil
    }
    if divisor == 0 {
        return nil
    }
    return dividend! / divisor!
}

// 考察的是 guard let 语句以及 optional chaining
func divide2(dividend: Double?, by divisor: Double?) -> Double? {
    guard let dividend = dividend, let divisor = divisor, divisor != 0 else {
        return nil;
    }
    return dividend / divisor
}