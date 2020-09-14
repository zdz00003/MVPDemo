//
//  MVPPresent.m
//  mvp
//
//  Created by sn on 2020/9/14.
//  Copyright © 2020 sn. All rights reserved.
//

#import "MVPPresent.h"

@implementation MVPPresent

-(void)request1:(requestVoidBlock)block{
    //......
    block();
}
-(void)request2:(requestVoidBlock)block{
    //......
    block();
}
-(void)request3:(requestVoidBlock)block{
    //......
    block();
}

-(MVPTestModel *)requestResult{
    self.requestModel.text = @"123";
    return self.requestModel;
}

-(MVPTestModel *)requestModel{
    if (!_requestModel) {
        _requestModel = [[MVPTestModel alloc]init];
    }
    return _requestModel;
}

@end
