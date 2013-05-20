//
//  Device.m
//  HighQualityWallpapers
//
//  Created by Dolice on 2013/03/24.
//  Copyright (c) 2013 Masaki Hirokawa. All rights reserved.
//

#import "Device.h"

@implementation Device

//iOSデバイス名の取得
+ (NSString *)iOSDevice
{
  if(UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
    if ([[UIScreen mainScreen] respondsToSelector: @selector(scale)]) {
      CGSize result = [[UIScreen mainScreen] bounds].size;
      CGFloat scale = [UIScreen mainScreen].scale;
      result = CGSizeMake(result.width * scale, result.height * scale);
      if(result.height == 960){
        return (@"iPhone4");
      }
      if(result.height == 1136){
        return (@"iPhone5");
      }
    } else {
      return (@"iPhone3");
    }
  } else {
    if ([[UIScreen mainScreen] respondsToSelector: @selector(scale)]) {
      return (@"iPad Retina");
    } else {
      return (@"iPad");
    }
  }
  return (@"unknown");
}

//iPhone 5端末であるか
+ (BOOL) isIphone5
{
  return ([[Device iOSDevice] isEqualToString:@"iPhone5"]);
}

//iPhone 4/4S端末であるか
+ (BOOL) isIphone4
{
  return ([[Device iOSDevice] isEqualToString:@"iPhone4"]);
}

//iPhone 3G/3GSであるか
+ (BOOL) isIphone3
{
  return ([[Device iOSDevice] isEqualToString:@"iPhone3"]);
}

//iPad端末であるか
+ (BOOL) isIpad
{
  return ([[Device iOSDevice] isEqualToString:@"iPad"]);
}

//iPad Retina端末であるか
+ (BOOL) isIpadRetina
{
  return ([[Device iOSDevice] isEqualToString:@"iPad Retina"]);
}

//4インチ端末であるか
+(BOOL) is4inch {
    CGSize screenSize = [[UIScreen mainScreen] bounds].size;
    return (screenSize.width == 320.0 && screenSize.height == 568.0);
}

//iOS6以降であるか
+(BOOL) isiOS6 {
    NSString *osversion = [UIDevice currentDevice].systemVersion;
    NSArray *a = [osversion componentsSeparatedByString:@"."];
    return ([(NSString*)[a objectAtIndex:0] intValue] >= 6);
}

@end
