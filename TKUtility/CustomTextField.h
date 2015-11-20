//
//  CustomTextField.h
//  Strategy
//
//  Created by Carlo Chung on 8/2/10.
//  Copyright 2010 Carlo Chung. All rights reserved.
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
