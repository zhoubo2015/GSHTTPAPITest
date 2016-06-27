//
//  LanguageManage.h
//  GSHTTPAPITest
//
//  Created by ZhouDamon on 16/6/27.
//  Copyright © 2016年 ZhouDamon. All rights reserved.
//

#import <Foundation/Foundation.h>

#define TABLE_OF_LANGUAGE   @"language"

@interface LanguageManage : NSObject

+ (NSBundle *)bundle;


@end


#define GSLocalizedString(key, comment) \
NSLocalizedStringFromTableInBundle(key, TABLE_OF_LANGUAGE, [LanguageManage bundle], comment)