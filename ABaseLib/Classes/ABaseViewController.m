//
//  ABaseViewController.m
//  ABaseLib
//
//  Created by sundanlong on 2018/7/17.
//

#import "ABaseViewController.h"
#import <Masonry/Masonry.h>
#import "ABaseHelper.h"
#import "ABaseConst.h"
#import "ABaseMacros.h"

@interface ABaseViewController ()

@end

@implementation ABaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImageView *iv = [[UIImageView alloc] init];
    iv.image = [UIImage imageNamed:@"img.jpeg"];
    [self.view addSubview:iv];
    [iv mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
    NSString *str = [ABaseHelper getDescContent:CIM_BaseId baseName:CIM_BaseName verison:SQlite_VersionNum];
    UILabel *lab = [[UILabel alloc] init];
    lab.text = str;
    lab.textColor = [UIColor blackColor];
    lab.font = [UIFont systemFontOfSize:20];
    [self.view addSubview:lab];
    [lab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
    }];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
