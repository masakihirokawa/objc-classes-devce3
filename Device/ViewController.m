//
//  ViewController.m
//  Device
//
//  Created by Dolice on 2013/03/25.
//  Copyright (c) 2013 Masaki Hirokawa. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    //デバイス情報をラベルにセット
    [self setDeviceInformation];
}

- (void)setDeviceInformation
{
    //デバイス名称
    self.labelIOSDevice.text = [Device iOSDevice];
    
    //iPhone5であれば1が返る
    self.labelIphone5.text = [NSString stringWithFormat:@"%@%d", @"isIphone5: ", [Device isIphone5]];
    
    //iPhone4/4Sであれば1が返る
    self.labelIphone4.text = [NSString stringWithFormat:@"%@%d", @"isIphone4: ", [Device isIphone4]];
    
    //iPhone3G/3GSであれば1が返る
    self.labelIphone3.text = [NSString stringWithFormat:@"%@%d", @"isIphone3: ", [Device isIphone3]];
    
    //iPad/iPad2/iPad miniであれば1が返る
    self.labelIpad.text = [NSString stringWithFormat:@"%@%d", @"isIpad: ", [Device isIpad]];
    
    //新しい iPad以降であれば1が返る
    self.labelIpadRetina.text = [NSString stringWithFormat:@"%@%d", @"isIpadRetina: ", [Device isIpadRetina]];

    //4インチ端末であれば1が返る
    self.label4inch.text = [NSString stringWithFormat:@"%@%d", @"is4inch: ", [Device is4inch]];
    
    //iOS6以降であれば1が返る
    self.labeliOS6.text = [NSString stringWithFormat:@"%@%d", @"isiOS6: ", [Device isiOS6]];
}

@end
