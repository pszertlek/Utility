//
//  AppDelegate.h
//  TKUtility
//
//  Created by Coco on 15/11/20.
//  Copyright © 2015年 pszertlek. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TKInputValidator.h"

@interface CustomTextField : UITextField 
{
  @private
  TKInputValidator *inputValidator_;
}

@property (nonatomic, strong) IBOutlet TKInputValidator *inputValidator;

- (BOOL) validate;



@end
