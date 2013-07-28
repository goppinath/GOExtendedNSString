//
//  NSString+GOExtension.m
//  GOExtendedNSString
//
//  Created by Goppinath Thurairajah on 28.07.13.
//  Copyright (c) 2013 Goppinath Thurairajah. http://goppinath.com
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.

#import "NSString+GOExtension.h"

@implementation NSString (GOExtension)

- (BOOL)isEmptyString {
    
    if ([self isEqualToString:[NSString string]]) return YES;
    else return NO;
}

- (BOOL)isValidString {
    
    if (self && ![self isEmptyString]) return YES;
    else return NO;
}

- (NSString *)trim {
    
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

- (NSString *)trimLastCharacters:(NSUInteger)numberOfCharacters {
    
    return [self substringToIndex:[self length] - numberOfCharacters];
}

- (NSString *)trimLastCharacter {
    
    return [self trimLastCharacters:1];
}

- (NSString *)trimDisplayTextUpTo:(NSUInteger)numberOfCharacters {
    
    if (self.length > numberOfCharacters) {
        
        return [[self substringToIndex:numberOfCharacters] stringByAppendingString:@"..."];
    }
    
    return self;
}

- (NSString *)stringAtIndex:(NSUInteger)index {
    
    if ([self isValidString] && [self length] > index) {
        
        return [[self trim] substringWithRange:NSMakeRange(index, 1)];
        
    } else return [NSString string];
}

- (NSString *)firstCharacter {
    
    if ([self isValidString]) {
        
        return [[self trim] substringToIndex:1];
        
    } else return [NSString string];
}

- (NSString *)lastCharacter {
    
    if ([self isValidString]) {
        
        return [[self trim] substringFromIndex:[self length] - 1];
        
    } else return [NSString string];
}

- (BOOL)containsTheCharacterFromSet:(NSCharacterSet *)aSet options:(NSStringCompareOptions)mask {
    
    return ([self rangeOfCharacterFromSet:aSet options:mask].location != NSNotFound);
}

- (void)printString {
    
    if ([self isEmptyString]) {
        
        NSLog(@"%@ ==> String is empty", NSStringFromClass([self class]));
        
    } else {
        
        NSLog(@"%@ ==> String is: @\"%@\"", NSStringFromClass([self class]), self);
    }
}

@end
