//
//  ABaseObj.m
//  Pods
//
//  Created by sundanlong on 2018/7/17.
//

#import "ABaseObj.h"
#import "ABaseHelper.h"
#import "ABaseConst.h"
#import "ABaseMacros.h"

@implementation ABaseObj

- (void)printContent {
    NSString *str = [ABaseHelper getDescContent:CIM_BaseId baseName:CIM_BaseName verison:SQlite_VersionNum];
    NSLog(@"str === %@", str);
}

@end
