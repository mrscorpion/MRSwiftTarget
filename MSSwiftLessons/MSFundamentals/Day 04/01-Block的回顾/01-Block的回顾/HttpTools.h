//
//  HttpTools.h
//  01-Block的回顾
//
//  Created by 1 on 16/9/27.
//  Copyright © 2016年 mr. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HttpTools : NSObject

- (void)loadData:(void(^)(NSString *))finishedCallback;

@end
