//
//  WLViewController.m
//  WLIconFont
//
//  Created by 刘光强 on 02/26/2018.
//  Copyright (c) 2018 刘光强. All rights reserved.
//

#import "WLViewController.h"
#import "WLIcon.h"


@interface WLViewController ()

@end

@implementation WLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // UIButton使用方式
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"字体图片测试" forState:UIControlStateNormal];
    btn.frame = CGRectMake(0, 60, 200, 30);
    btn.backgroundColor = [UIColor redColor];
    // UIButton使用大小自适应行不通
    //    [test.titleLabel sizeToFit];
    [btn setTitleColor:[UIColor magentaColor] forState:UIControlStateNormal];
    [btn setImage:[WLIcon iconWithName:@"praise_selected_s" size:23 color:[UIColor orangeColor]] forState:UIControlStateNormal];
    [self.view addSubview:btn];
    
    // 以Button的titleLable文字来展示字体
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn2.titleLabel.font = [UIFont fontWithName:@"iconfont" size:15];//设置label的字体
    [btn2 setTitle: [WLIcon matchIconCodeWithName:@"praise_unselected_o"] forState:UIControlStateNormal];
    btn2.frame = CGRectMake(0, 120, 100, 30);
    btn2.backgroundColor = [UIColor redColor];
    [btn2 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [self.view addSubview:btn2];

    // UILable使用方式
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 180, 280, 40)];
    label.font = [UIFont fontWithName:@"iconfont" size:15]; //设置label的字体
    label.text = [WLIcon matchIconCodeWithName:@"share_o"];
    label.textColor = [UIColor redColor];
    // lable根据内容自适应大小
    [label sizeToFit];
    [self.view addSubview:label];

    // UILable的text文本和字体混合显示
    UILabel *label2 = [[UILabel alloc] initWithFrame: CGRectMake(0, 240, 280, 40)];
    label2.font = [UIFont fontWithName:@"iconfont" size:15];//设置label的字体
    label2.text = [NSString stringWithFormat:@"这是用label显示的iconfont:   %@", [WLIcon matchIconCodeWithName:@"comment_o"]];
    [self.view addSubview:label2];

    // UIImageView的使用
    UIImageView *img = [[UIImageView alloc] init];
    img.frame = CGRectMake(0, 300, 30, 30);
    img.backgroundColor = [UIColor purpleColor];
    img.image = [WLIcon iconWithName:@"add_o" size:23 color:[UIColor magentaColor]];
    [self.view addSubview:img];
}

@end
