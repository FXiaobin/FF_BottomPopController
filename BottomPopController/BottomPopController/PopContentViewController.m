//
//  PopContentViewController.m
//  BottomPopController
//
//  Created by mac on 2018/11/7.
//  Copyright © 2018 healifeGroup. All rights reserved.
//

#import "PopContentViewController.h"
#import "PopContentView.h"

@interface PopContentViewController ()

@end

@implementation PopContentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


///子类重写此点击事件处理方法
-(void)contentViewClickEventHandler{
    
    PopContentView *contentView = (PopContentView *)self.contentView;
    ///点击取消按钮事件
    __weak typeof(self) weakSelf = self;
    contentView.cancelBtnActionBlock = ^(UIButton * _Nonnull sender) {
        [weakSelf dismissContentView];
    };
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
