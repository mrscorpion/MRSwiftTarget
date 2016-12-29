//: Playground - noun: a place where people can play
/* 
 1.runtime 到底是什么东西？原理又是什么？
 2.runtime 用来干什么呢？？用在那些地方呢？怎么用呢？
 3.【拓展】Swift 是否和 OC 一样有 runtime 机制？
 */

/*
 iOS runtime原理
 
 objc_msgSend 可以给对象发送消息 
 objc_getClass("Person") 可以获取到指定名称的对象 
 sel_registerName("alloc") 可以调用到对象的方法
 
 结论： 使用objc_msgSend函数，给objc_getClass函数实例化的对象发送sel_registerName获取到的方法 这么一个消息 代码是给人看的，顺带让机器实现功能。日常的程序开发过程中，要少用runtime.
 runtime应用的时机： 
    1> 当需要非常高的性能开发时，使用runtime，注释：oc的代码已经无法满足性能需求 
    2> 当我们对系统内部的实现很好奇的时候，可以用clang反编译成c++去看底层的实现机制！
 */

import UIKit

