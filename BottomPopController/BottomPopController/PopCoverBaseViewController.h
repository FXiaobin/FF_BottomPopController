//
//  PopCoverBaseViewController.h
//  BottomPopController
//
//  Created by mac on 2018/11/7.
//  Copyright © 2018 healifeGroup. All rights reserved.
//

#import <UIKit/UIKit.h>

///控制器模态弹窗基类

NS_ASSUME_NONNULL_BEGIN

@interface PopCoverBaseViewController : UIViewController

@property (nonatomic,strong) UIView *contentView;

@property (nonatomic,assign) CGFloat contentViewHeight;

-(void)showContentView;

-(void)dismissContentView;

///contentView的点击事件处理 子类需要重写
-(void)contentViewClickEventHandler;

@end

NS_ASSUME_NONNULL_END
