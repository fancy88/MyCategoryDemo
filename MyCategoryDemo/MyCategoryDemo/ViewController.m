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

@interface ViewController ()

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
    
}

- (void)buttonAction: (UIButton *)button{
    button.backgroundColor = [UIColor RandomColor];
    NSLog(@"Hello world!");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
