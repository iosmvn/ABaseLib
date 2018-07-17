//
//  ABaseHelper.m
//  ABaseLib
//
//  Created by sundanlong on 2018/7/17.
//

#import "ABaseHelper.h"

@implementation ABaseHelper

+ (NSString *)getDescContent:(NSString *)baseId baseName:(NSString *)baseName verison:(NSInteger)verison {
    NSMutableArray *options = [NSMutableArray array];
    [options addObject:[NSString stringWithFormat:@"BaseId：%@", baseId]];
    [options addObject:[NSString stringWithFormat:@"BaseName：%@", baseName]];
    [options addObject:[NSString stringWithFormat:@"版本号：%@", @(verison)]];
    return [options componentsJoinedByString:@", "];
}

@end
