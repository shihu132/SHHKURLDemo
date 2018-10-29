//
//  ViewController.m
//  SHHKURLDemo
//
//  Created by joyshow on 2018/10/29.
//  Copyright © 2018年 石虎. All rights reserved.
//

#import "ViewController.h"
#import <objc/runtime.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *sh_label1 = [[UILabel alloc]initWithFrame:CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width, 140)];
    sh_label1.backgroundColor = [UIColor lightGrayColor];
    sh_label1.numberOfLines = 0;
    sh_label1.text = [NSString stringWithFormat:@"%@",@"http://joyclass.51joyshow.com/Web/CloudCourse/services?scopeOfGrade=1&selectedCourse=国防"];
    sh_label1.textAlignment = NSTextAlignmentCenter;
    sh_label1.font = [UIFont systemFontOfSize:16];
    [self.view addSubview:sh_label1];
    
    NSURL *sh_url = [NSURL URLWithString:@"http://joyclass.51joyshow.com/Web/CloudCourse/services?scopeOfGrade=1&selectedCourse=国防"];
    NSLog(@"sh_url = %@",sh_url);
    
    
    UILabel *sh_label = [[UILabel alloc]initWithFrame:CGRectMake(0, 260, [UIScreen mainScreen].bounds.size.width, 140)];
    sh_label.backgroundColor = [UIColor lightGrayColor];
    sh_label.numberOfLines = 0;
    sh_label.text = [NSString stringWithFormat:@"%@",sh_url];
    sh_label.textAlignment = NSTextAlignmentCenter;
    sh_label.font = [UIFont systemFontOfSize:16];
    [self.view addSubview:sh_label];
    
    
}


@end
