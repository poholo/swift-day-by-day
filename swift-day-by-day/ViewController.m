//
//  ViewController.m
//  swift-day-by-day
//
//  Created by imooc on 16/1/10.
//  Copyright © 2016年 mjc. All rights reserved.
//

#import "ViewController.h"
#import "swift_day_by_day-Swift.h"

@interface ViewController ()
@property (nonatomic, strong) MAClass * a;
@property (nonatomic, strong) Person * person;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _a = [[MAClass alloc] init];
    _person = [[Person alloc] initWithPersonName:@"Hello"];
    
    _person.printName();

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)dealloc {
//    _a.b = nil;
    _a = nil;
    _person = nil;
}
@end
