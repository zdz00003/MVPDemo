//
//  MVPViewController.m
//  mvp
//
//  Created by sn on 2020/9/14.
//  Copyright © 2020 sn. All rights reserved.
//

#import "MVPViewController.h"
#import "MVPView.h"
#import "MVPPresent.h"

@interface MVPViewController ()

@property (nonatomic, strong)MVPPresent *present;

@property (nonatomic, strong)MVPView *mainView;

@end

@implementation MVPViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor purpleColor];
    [self.view addSubview:self.mainView];
    __weak typeof(self) wself = self;
    [self.present request1:^{
        [wself.present request2:^{
            [wself.present request3:^{
                wself.mainView.model = [wself.present requestResult];
            }];
        }];
    }];
    
}

#pragma mark - 懒加载
-(MVPPresent *)present{
    if (!_present) {
        _present = [[MVPPresent alloc]init];
    }
    return _present;
}
-(MVPView *)mainView{
    if (!_mainView) {
        _mainView = [[MVPView alloc]initWithFrame:self.view.frame];
    }
    return _mainView;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
