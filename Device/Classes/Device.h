//
//  Device.h
//  HighQualityWallpapers
//
//  Created by Dolice on 2013/03/24.
//  Copyright (c) 2013 Masaki Hirokawa. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Device : NSString

+ (NSString *)iOSDevice;
+ (BOOL) isIphone5;
+ (BOOL) isIphone4;
+ (BOOL) isIphone3;
+ (BOOL) isIpad;
+ (BOOL) isIpadRetina;
+ (BOOL) is4inch;
+ (BOOL) isiOS6;

@end
