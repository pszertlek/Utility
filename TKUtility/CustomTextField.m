//
//  AppDelegate.h
//  TKUtility
//
//  Created by Coco on 15/11/20.
//  Copyright © 2015年 pszertlek. All rights reserved.
//

#import "CustomTextField.h"


@implementation CustomTextField

@synthesize inputValidator=inputValidator_;

- (BOOL) validate
{
  NSError *error = nil;
  BOOL validationResult = [inputValidator_ validateInput:self.text error:&error];
  
  if (!validationResult)
  {
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:[error localizedDescription]
                                                        message:[error localizedFailureReason]
                                                       delegate:nil
                                              cancelButtonTitle:NSLocalizedString(@"OK", @"")
                                              otherButtonTitles:nil];
    [alertView show];

  }
  
  return validationResult;
}



@end
