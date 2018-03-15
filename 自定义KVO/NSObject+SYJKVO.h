//
//  NSObject+SYJKVO.h
//  自定义KVO
//
//  Created by 尚勇杰 on 2018/3/15.
//  Copyright © 2018年 尚勇杰. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^SYJObservingBlcok)(id observedObject,NSString *observerdKey,id oldVlaue,id newValue);


@interface NSObject (SYJKVO)

/** 添加一个监听 并把KVO的回调由代理改成block */
- (void)SYJ_AddObserver:(NSObject *)observer forKey:(NSString *)key withBlock:(SYJObservingBlcok)blcok;

/** 移除监听 */
- (void)SYJ_RemoveObserver:(NSObject *)obersver forKey:(NSString *)key;

@end
