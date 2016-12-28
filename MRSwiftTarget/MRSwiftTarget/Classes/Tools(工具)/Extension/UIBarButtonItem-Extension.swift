//
//  UIBarButtonItem-Extension.swift
//  MRSwiftTarget
//
//  Created by ms on 2016/12/27.
//  Copyright © 2016年 mrscorpion. All rights reserved.
//

import Foundation
import UIKit

extension UIBarButtonItem {
    
    /*
     优化方法一、系统类扩充方法
     如何抽取呢？
     在OC中我们通常给系统的类抽取分类，在分类中给系统的类扩充方法
     Swift也是类似，只是Swift使用extension，表示对系统的类进行扩充
     比如我们给系统的类抽取类方法
 
 
     */
    class func createBarButtonItem(imageName : String, highImageName : String = "", size : CGSize = CGSize.zero, target : AnyObject? = nil, action : Selector? = nil) -> UIBarButtonItem {
        // 1.创建UIButton
        let btn = UIButton(type: .custom)
        // 2.给UIButton设置属性
        btn.setImage(UIImage(named: imageName), for: .normal)
        if highImageName != "" {
            btn.setImage(UIImage(named: highImageName), for: .highlighted)
        }
        // 3.设置尺寸
        if size == CGSize.zero {
            btn.sizeToFit()
        } else {
            btn.frame = CGRect(origin: CGPoint.zero, size: size)
        }
        // 4.监听点击
        btn.addTarget(target, action: action!, for: .touchUpInside)
        return UIBarButtonItem(customView: btn)
    }

}
