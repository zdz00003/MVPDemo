//
//  MVPPresent.h
//  mvp
//
//  Created by sn on 2020/9/14.
//  Copyright © 2020 sn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MVPTestModel.h"

typedef void(^requestVoidBlock)();

NS_ASSUME_NONNULL_BEGIN

@interface MVPPresent : NSObject

@property (nonatomic, strong)MVPTestModel *requestModel;

-(void)request1:(requestVoidBlock)block;
-(void)request2:(requestVoidBlock)block;
-(void)request3:(requestVoidBlock)block;

-(MVPTestModel *)requestResult;

@end

NS_ASSUME_NONNULL_END
