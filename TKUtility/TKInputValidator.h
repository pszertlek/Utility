//
//  TKInputValidator.h
//  TKUtility
//
//  Created by Coco on 15/11/20.
//  Copyright © 2015年 pszertlek. All rights reserved.
//

#import <Foundation/Foundation.h>

static NSString * const InputValidationErrorDomain = @"InputValidationErrorDomain";

@interface TKInputValidator : NSObject

- (BOOL) validateInput:(NSString *)input error:(NSError **) error;

@end

@interface TKAlphaInputValidator : TKInputValidator

@end

@interface TKNumbericInputValidator : TKInputValidator

@end

