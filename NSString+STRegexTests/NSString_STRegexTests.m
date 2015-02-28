//
//  NSString_STRegexTests.m
//  NSString+STRegexTests
//
//  Created by yls on 14-1-15.
//  Copyright (c) 2014年 yls. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSString+STRegex.h"

@interface NSString_STRegexTests : XCTestCase

@end

@implementation NSString_STRegexTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testIsValidAccount
{
    NSString *account = @"1_中12Aw";
    NSInteger minLenth = 6;
    NSInteger maxLenth = 7;
    BOOL containChinese = YES;
    BOOL rc = [account isValidWithMinLenth:minLenth maxLenth:maxLenth containChinese:containChinese firstCannotBeDigtal:YES];
    NSLog(@"%@%@ 符合条件：最小长度%d,最长长度%d,%@包含中文", account,rc?@"":@"不", minLenth, maxLenth, containChinese ? @"" : @"不");
}

- (void)testIsValidIP
{
    NSString *str = @"0.2.00.255";
    BOOL rc = [str isValidIP];
    NSLog(@"%@ %@符合IP格式", str, rc ? @"" : @"不");
}

@end
