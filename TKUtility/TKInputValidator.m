//
//  TKInputValidator.m
//  TKUtility
//
//  Created by Coco on 15/11/20.
//  Copyright © 2015年 pszertlek. All rights reserved.
//

#import "TKInputValidator.h"

@implementation TKInputValidator

// A stub for any actual validation strategy
- (BOOL) validateInput:(NSString *)input error:(NSError **) error
{
    if (error)
    {
        *error = nil;
    }
    
    return NO;
}


@end

@implementation TKAlphaInputValidator

- (BOOL) validateInput:(NSString *)input error:(NSError **) error
{
    NSRegularExpression *regex = [NSRegularExpression
                                  regularExpressionWithPattern:@"^[a-zA-Z]*$"
                                  options:NSRegularExpressionAnchorsMatchLines
                                  error:nil];
    
    NSUInteger numberOfMatches = [regex
                                  numberOfMatchesInString:input
                                  options:NSMatchingAnchored
                                  range:NSMakeRange(0, input.length)];
    
    // If there is not a single match
    // then return an error and NO
    if (numberOfMatches == 0)
    {
        if (error != nil)
        {
            NSString *description = NSLocalizedString(@"Input Validation Failed", @"");
            NSString *reason = NSLocalizedString(@"The input can only contain letters", @"");
            
            NSArray *objArray = [NSArray arrayWithObjects:description, reason, nil];
            NSArray *keyArray = [NSArray arrayWithObjects:NSLocalizedDescriptionKey,
                                 NSLocalizedFailureReasonErrorKey, nil];
            
            NSDictionary *userInfo = [NSDictionary dictionaryWithObjects:objArray
                                                                 forKeys:keyArray];
            *error = [NSError errorWithDomain:InputValidationErrorDomain
                                         code:1002
                                     userInfo:userInfo];
        }
        
        return NO;
    }
    
    return YES;
}


@end

@implementation TKNumbericInputValidator

- (BOOL) validateInput:(NSString *)input error:(NSError**) error
{
    NSError *regError = nil;
    NSRegularExpression *regex = [NSRegularExpression
                                  regularExpressionWithPattern:@"^[0-9]*$"
                                  options:NSRegularExpressionAnchorsMatchLines
                                  error:&regError];
    
    NSUInteger numberOfMatches = [regex
                                  numberOfMatchesInString:input
                                  options:NSMatchingAnchored
                                  range:NSMakeRange(0, input.length)];
    
    // if there is not a single match
    // then return an error and NO
    if (numberOfMatches == 0)
    {
        if (error != nil)
        {
            NSString *description = NSLocalizedString(@"Input Validation Failed", @"");
            NSString *reason = NSLocalizedString(@"The input can only contain numerical values", @"");
            
            NSArray *objArray = [NSArray arrayWithObjects:description, reason, nil];
            NSArray *keyArray = [NSArray arrayWithObjects:NSLocalizedDescriptionKey,
                                 NSLocalizedFailureReasonErrorKey, nil];
            
            NSDictionary *userInfo = [NSDictionary dictionaryWithObjects:objArray
                                                                 forKeys:keyArray];
            *error = [NSError errorWithDomain:InputValidationErrorDomain
                                         code:1001
                                     userInfo:userInfo];
        }
        
        return NO;
    }
    
    return YES;
}

@end
