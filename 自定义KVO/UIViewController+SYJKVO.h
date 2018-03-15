//
//  UIViewController+SYJKVO.h
//  自定义KVO
//
//  Created by 尚勇杰 on 2018/3/15.
//  Copyright © 2018年 尚勇杰. All rights reserved.
//

#import <UIKit/UIKit.h>

//(id observedObject, NSString *observedKey, id oldValue, id newValue);

typedef void(^SYJObservingBlcok)(id observedObject,NSString *observerdKey,id oldVlaue,id newValue);

@interface UIViewController (SYJKVO)

//- (void)PG_addObserver:(NSObject *)observer
//                forKey:(NSString *)key
//             withBlock:(PGObservingBlock)block;
//
//- (void)PG_removeObserver:(NSObject *)observer forKey:(NSString *)key;


- (void)SYJ_AddObserver:(NSObject *)observer forKey:(NSString *)key withBlock:(SYJObservingBlcok)blcok;

- (void)SYJ_RemoveObserver:(NSObject *)obersver forKey:(NSString *)key;

@end
