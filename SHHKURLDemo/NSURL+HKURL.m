//
//  NSURL+HKURL.m
//  SHHKURLDemo
//
//  Created by joyshow on 2018/10/29.
//  Copyright © 2018年 石虎. All rights reserved.
//

#import "NSURL+HKURL.h"
#import <objc/runtime.h>

@implementation NSURL (HKURL)

+(void)load{
    //以前方法
    Method URLWithStr = class_getClassMethod(self,@selector(URLWithString:));
    //新方法
    Method HKURLWithStr = class_getClassMethod(self,@selector(HK_URLWithString:));
    //交换
    method_exchangeImplementations(URLWithStr, HKURLWithStr);
}

+ (nullable instancetype)HK_URLWithString:(NSString *)URLString{
    NSURL * url = [NSURL HK_URLWithString:URLString];//系统 SEL
    if (url == nil) {
        //数据为 nil 重新设置
        URLString = [URLString  stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
    }
    url = [NSURL HK_URLWithString:URLString];
    return url;
}


@end
