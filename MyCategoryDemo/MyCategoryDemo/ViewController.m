//
//  ViewController.m
//  MyCategoryDemo
//
//  Created by apple on 17/3/9.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "ViewController.h"
#import "UIColor+RandomColor.h"
#import "UIImage+ResizeImage.h"
#import "NSDate+Extention.h"
#import "UIView+Extension.h"

@interface ViewController (){
    UIView *view ;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self getUI];
    

}

- (void)getUI{
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(self.view.frame.size.width / 2.0 - 50, 200, 100, 40);
    button.backgroundColor = [UIColor cyanColor];
    [button setTitle:@"Click" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    UIImageView *ImgView = [[UIImageView alloc] initWithFrame:CGRectMake(self.view.frame.size.width / 2.0 - 50, 300, 100, 100)];
    [ImgView setImage:[UIImage imageWithString:@"iceberg.jpeg"]];
    [self.view addSubview:ImgView];
    
    view = [[UIView alloc] initWithFrame:CGRectMake(self.view.frame.size.width / 2.0 - 50, 450, 100, 100)];
    view.backgroundColor = [UIColor RandomColor];
    [self.view addSubview:view];

}

- (void)buttonAction: (UIButton *)button{
    button.backgroundColor = [UIColor RandomColor];
    button.selected = !button.selected;
    BOOL flag = [[NSDate date] isYesterday];
    if (flag) {
        NSLog(@"Hello world!");
    }else{
        NSLog(@"Hello kitty!");
    }
    view.backgroundColor = [UIColor RandomColor];
    if (button.selected) {
        [UIView animateWithDuration:1 animations:^{
            view.centerX = 100;
        } completion:nil];
    }else{
        [UIView animateWithDuration:1 animations:^{
            view.centerX = self.view.frame.size.width / 2.0;
        } completion:nil];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
