//
//  MainTabBarController.swift
//  MRSwiftTarget
//
//  Created by ms on 2016/12/26.
//  Copyright © 2016年 mrscorpion. All rights reserved.
//  框架搭建

/*
 二、 不采用Storyboard Reference的实现方案
 
 因为StoryBoard Reference是Xcode7，iOS9出现的新功能，所有如果依然需要适配iOS8则不能使用
 那么我们可以通过代码，从storyboard中加载出来控制器，手动添加成为TabBarController的子控制器方式
 方式如下：
 创建MainViewController，并且将TabBarController的类设置成MainViewController
 在ViewDidLoad方法中从storyboard加载Home、Live、Follow、Profile控制器，添加到MainVIewController中
 代码如下：
 */
import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad()
    {
        super.viewDidLoad()

//        // 方法二、（代码添加） - 在ViewDidLoad方法中从storyboard加载Home、Live、Follow、Profile控制器，添加到MainVIewController中
//        addChildVcWithStoryboardName(name: "Home")
//        addChildVcWithStoryboardName(name: "Live")
//        addChildVcWithStoryboardName(name: "Follow")
//        addChildVcWithStoryboardName(name: "Profile")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}


// MARK:- 添加子控制器
extension MainTabBarController {
    // warning 这里加上private就会报错 ？
//    private func addChildVcWithStoryboardName(name : String) {
    func addChildVcWithStoryboardName(name : String) {
        // 1.加载storyboard中的控制器
        let childVc = UIStoryboard(name: name, bundle: nil).instantiateInitialViewController()!
        // 2.将控制器添加到TabBarController中
        addChildViewController(childVc)
    }
}
