//
//  PopCoverBaseViewController.m
//  BottomPopController
//
//  Created by mac on 2018/11/7.
//  Copyright © 2018 healifeGroup. All rights reserved.
//

#import "PopCoverBaseViewController.h"
#import <Masonry.h>

@interface PopCoverBaseViewController ()

@property (nonatomic,strong) UIButton *emptyButton;

@end

@implementation PopCoverBaseViewController

-(instancetype)init{
    if (self = [super init]) {
        self.providesPresentationContextTransitionStyle = YES;
        self.definesPresentationContext = YES;
        self.modalPresentationStyle = UIModalPresentationOverCurrentContext;
    }
    return self;
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    [self showContentView];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
    
    [self.view addSubview:self.emptyButton];
    
    if (self.contentView == nil) {
        NSLog(@"----- 弹窗视图传值不能为nil ----");
        return;
    }
    
    [self.view addSubview:self.contentView];
    
    [self.contentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view);
        make.right.equalTo(self.view.mas_right);
        make.bottom.equalTo(self.view.mas_bottom).offset(self.contentViewHeight);
        make.height.mas_equalTo(self.contentViewHeight);
    }];
    
    [self contentViewClickEventHandler];
}

-(void)contentViewClickEventHandler{
    ///Example: 子类需x重写
    //    PopContentView *contentView = (PopContentView *)self.contentView;
    //    __weak typeof(self) weakSelf = self;
    //    contentView.cancelBtnActionBlock = ^(UIButton * _Nonnull sender) {
    //        [weakSelf dismissContentView];
    //    };
}

-(void)showContentView{
    [self.contentView mas_updateConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.view.mas_bottom);
    }];
    
    [UIView animateWithDuration:0.2 animations:^{
        [self.view layoutIfNeeded];
    }];
}

-(void)dismissContentView{
    [self.contentView mas_updateConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.view.mas_bottom).offset(self.contentViewHeight);
    }];
    
    [UIView animateWithDuration:0.2 animations:^{
        [self.view layoutIfNeeded];
        
    } completion:^(BOOL finished) {
        [self dismissViewControllerAnimated:NO completion:nil];
    }];
}

-(void)dismissPopCover:(UIButton *)sender{
    [self dismissContentView];
}

-(UIButton *)emptyButton{
    if (_emptyButton == nil) {
        _emptyButton = [[UIButton alloc] initWithFrame:[UIScreen mainScreen].bounds];
        _emptyButton.backgroundColor = [UIColor clearColor];
        [_emptyButton addTarget:self action:@selector(dismissPopCover:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _emptyButton;
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
