//
//  PopContentView.h
//  BottomPopController
//
//  Created by mac on 2018/11/7.
//  Copyright © 2018 healifeGroup. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PopContentView : UIView

@property (nonatomic,copy) void (^cancelBtnActionBlock) (UIButton *sender);

@end

NS_ASSUME_NONNULL_END
