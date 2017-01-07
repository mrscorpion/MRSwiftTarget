// C语言程序是由很多"程序段"组成的
/* 注意点
C语言中每一条语句后面都必须有;号
 C语言中除了""引起来的地方, 其它任何地方都不能出现中文
 main函数中的return 0;可以写, 也可以不写
 main函数前面的int可以写, 可以不写
 main函数后面的()不可以省略
 不要把main写错了
 同一程序中只能有一个main函数
 */

#include <stdio.h> // 告诉系统printf函数在什么地方

/*
int call()
{
    return 0;
}
 */

// command + b 将代码翻译为计算机能够识别的语言(0/1)
// command + r 在xcode中运行程序
int main()
{
    // \n让输出的内容换行, 固定格式
    printf("hello world\n"); // 调用系统函数
    return 0;
}
