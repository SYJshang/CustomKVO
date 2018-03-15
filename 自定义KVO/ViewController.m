//
//  ViewController.m
//  自定义KVO
//
//  Created by 尚勇杰 on 2018/3/15.
//  Copyright © 2018年 尚勇杰. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "NSObject+SYJKVO.h"

@interface ViewController ()

@property (nonatomic, strong) Person *p;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.p = [[Person alloc]init];
    [self.p SYJ_AddObserver:self forKey:@"name" withBlock:^(id observedObject, NSString *observerdKey, id oldVlaue, id newValue) {

        NSLog(@"%@\n%@\n%@\n%@",observedObject,observerdKey,oldVlaue,newValue);

    }];
    
    Person *a = self.p;
    id b = a;
    
    NSLog(@"%@",[b valueForKey:@"retainCount"]);

//    [self.p addObserver:self forKeyPath:@"name" options:(NSKeyValueObservingOptionNew) context:nil];
    
    
//    [p SYJ_RemoveObserver:p forKey:@"name"];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

//- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context {
//    NSLog(@"keyPath=%@", keyPath);
//}




- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
//    NSArray *msgs = @[@"Hello World!", @"Objective C", @"Swift", @"Peng Gu", @"peng.gu@me.com", @"www.gupeng.me", @"glowing.com"];
//    NSUInteger index = arc4random_uniform((u_int32_t)msgs.count);
    
    static int a;
    
    self.p.name = [NSString stringWithFormat:@"%d",a++];
    [self.p SYJ_RemoveObserver:self forKey:@"name"];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
