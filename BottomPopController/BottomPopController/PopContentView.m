//
//  PopContentView.m
//  BottomPopController
//
//  Created by mac on 2018/11/7.
//  Copyright © 2018 healifeGroup. All rights reserved.
//

#import "PopContentView.h"

@implementation PopContentView

-(instancetype)init{
    if (self = [super init]) {
        
        UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 200, 40)];
        btn.backgroundColor = [UIColor redColor];
        [btn setTitle:@"取消" forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(cancelBtnAction:) forControlEvents:UIControlEventTouchUpInside];
        
        [self addSubview:btn];
    }
    return self;
}

-(void)cancelBtnAction:(UIButton *)sender{
    if (self.cancelBtnActionBlock) {
        self.cancelBtnActionBlock(sender);
    }
    
}

@end
