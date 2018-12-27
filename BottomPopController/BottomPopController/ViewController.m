//
//  ViewController.m
//  BottomPopController
//
//  Created by mac on 2018/11/7.
//  Copyright © 2018 healifeGroup. All rights reserved.
//

#import "ViewController.h"
#import "PopContentViewController.h"
#import "PopContentView.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 200, 200, 40)];
    btn.backgroundColor = [UIColor orangeColor];
    [btn setTitle:@"模态弹窗控制器" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
}

-(void)btnAction:(UIButton *)sender{
    
    PopContentView *contentView = [[PopContentView alloc] init];
    contentView.backgroundColor = [UIColor orangeColor];
    
    
    PopContentViewController *vc = [[PopContentViewController alloc] init];

    vc.contentView = contentView;
    vc.contentViewHeight = 300;
    
    [self presentViewController:vc animated:NO completion:nil];
}



@end
