//
//  LanguageManage.m
//  GSHTTPAPITest
//
//  Created by ZhouDamon on 16/6/27.
//  Copyright © 2016年 ZhouDamon. All rights reserved.
//

#import "LanguageManage.h"

#define LANGUAGE_OF_EN          @"en"

static NSBundle *bundle = nil;
static LanguageManage *singleton = nil;

@implementation LanguageManage

+ (instancetype)sharedInstance
{
    @synchronized(self) {
        if (nil == singleton) {
            singleton = [[LanguageManage alloc] init];
        }
    }
    return singleton;
}

- (id)init
{
    self = [super init];
    if (self) {
        [self initBundle];
    }
    
    return self;
}

- (NSString *)language
{
    NSString *language = @"zh-Hans";
    
//    if (language.length == 0 || [language isEqualToString:LANGUAGE_OF_AUTO]) {
        NSArray *languages = [[NSUserDefaults standardUserDefaults] objectForKey:@"AppleLanguages"];
        language = [languages firstObject];
//    }
    
    if ([language isEqualToString:@"zh-Hans"]) {
        return language;
    }else if ([language isEqualToString:@"zh-Hans-CN"]) {//iOS9
        language = [language substringToIndex:7];
        return language;
    }
    return language;
}


- (void)initBundle
{
    NSString *path = [[NSBundle mainBundle] pathForResource:self.language ofType:@"lproj"];
    if (!path) {
        path = [[NSBundle mainBundle] pathForResource:LANGUAGE_OF_EN ofType:@"lproj"];
    }
    bundle = [NSBundle bundleWithPath:path];
}

+ (NSBundle *)bundle
{
    @synchronized (self) {
        if (bundle == nil) {
            [LanguageManage sharedInstance];
        }
    }
    return bundle;
}

@end
