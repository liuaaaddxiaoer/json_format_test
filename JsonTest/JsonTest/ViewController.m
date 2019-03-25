//
//  ViewController.m
//  JsonTest
//
//  Created by 小2 on 2019/3/25.
//  Copyright © 2019 小2. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSString *path = [[NSBundle mainBundle] pathForResource:@"test" ofType:@"json"];
    NSLog(@"%@",path);
    
   id obj = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:path] options:NSJSONReadingMutableLeaves error:NULL];
    
    NSLog(@"%d",[[NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:path] options:NSJSONReadingMutableLeaves error:NULL] isKindOfClass:NSClassFromString(@"__NSDictionaryM")]);
    
    NSLog(@"%@",obj);
    
    id data = [NSJSONSerialization dataWithJSONObject:obj options:NSJSONWritingSortedKeys error:NULL];
    
    NSLog(@"%@",[[NSString  alloc] initWithData:data encoding:NSUTF8StringEncoding]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
