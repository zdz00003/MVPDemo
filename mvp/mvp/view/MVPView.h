//
//  MVPView.h
//  mvp
//
//  Created by sn on 2020/9/14.
//  Copyright © 2020 sn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MVPTestModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface MVPView : UIView

@property (nonatomic, strong)MVPTestModel *model;

@end

NS_ASSUME_NONNULL_END
