//
//  Base64.m
//  tyre
//
//  Created by Coco on 15/10/28.
//  Copyright © 2015年 tqmall. All rights reserved.
//

#import "NSString+Base64.h"

#import "NSData+Base64.h"


@implementation NSString (Base64)


+ (NSString *)stringWithBase64EncodedString:(NSString *)string

{
    
    NSData *data = [NSData dataWithBase64EncodedString:string];
    
    if (data)
        
    {
        
        NSString *result = [[self alloc] initWithData:data encoding:NSUTF8StringEncoding];
        
        
        
        return result;
        
    }
    
    return nil;
    
}


- (NSString *)base64EncodedStringWithWrapWidth:(NSUInteger)wrapWidth
{
    NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding allowLossyConversion:YES];
    return [data base64EncodedStringWithWrapWidth:wrapWidth];
    
}


- (NSString *)base64EncodedString

{
    
    NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding allowLossyConversion:YES];
    
    return [data  base64EncodedString];
    
}


- (NSString *)base64DecodedString

{
    
    return [NSString stringWithBase64EncodedString:self];
    
}


- (NSData *)base64DecodedData

{
    
    return [NSData dataWithBase64EncodedString:self];
    
}


@end