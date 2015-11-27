//
//  TKLaunchImage.m
//  TKUtility
//
//  Created by Coco on 15/11/27.
//  Copyright © 2015年 pszertlek. All rights reserved.
//

#import "TKLaunchImage.h"
#import <UIKit/UIKit.h>
@implementation TKLaunchImage


- (void)launchImage{
    CGSize viewSize = [UIScreen mainScreen].bounds.size;
    NSString *viewOrientation = @"Portrait";    //横屏请设置成 @"Landscape"
    NSString *launchImage = nil;
    
    NSArray* imagesDict = [[[NSBundle mainBundle] infoDictionary] valueForKey:@"UILaunchImages"];
    for (NSDictionary* dict in imagesDict)
    {
        CGSize imageSize = CGSizeFromString(dict[@"UILaunchImageSize"]);
        
        if (CGSizeEqualToSize(imageSize, viewSize) && [viewOrientation isEqualToString:dict[@"UILaunchImageOrientation"]])
        {
            launchImage = dict[@"UILaunchImageName"];
        }
    }

}
@end
