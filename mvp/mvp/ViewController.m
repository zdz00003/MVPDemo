//
//  ViewController.m
//  mvp
//
//  Created by sn on 2020/9/14.
//  Copyright © 2020 sn. All rights reserved.
//

#import "ViewController.h"
#import "MVPViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor blueColor];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        MVPViewController *mvp = [[MVPViewController alloc]init];
        [self presentViewController:mvp animated:YES completion:nil];
    });
    
}


@end
