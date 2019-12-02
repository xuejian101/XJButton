//
//  ViewController.m
//  XJButton
//
//  Created by 薛健 on 2019/12/2.
//  Copyright © 2019 薛健. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"
#import "XJButton.h"

////宏定义方法
#define WS(weakSelf)  __weak __typeof(&*self)weakSelf = self;

#define random(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:(a)/255.0]
#define ColorOfRandom random(arc4random_uniform(256), arc4random_uniform(256), arc4random_uniform(256), arc4random_uniform(256))

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view, typically from a nib.
    
    XJButton *btn1 = [[XJButton alloc] initWithType:XJImageButtonTypeTop AndMarginArr:@[@5]];
    btn1.backgroundColor = ColorOfRandom;
    btn1.image = [UIImage imageNamed:@"image1"];
    btn1.text = @"按钮1按钮1按钮1按钮1按钮1按钮1按钮1按钮1按钮1";
    btn1.contentLabel.textColor = [UIColor redColor];
    btn1.contentLabel.font = [UIFont systemFontOfSize:13];
    btn1.contentLabel.textAlignment =NSTextAlignmentLeft;
    [self.view addSubview:btn1];
    [btn1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.view).offset(10);
        make.top.mas_equalTo(self.view).offset(100);

    }];

    XJButton *btn2 = [[XJButton alloc] initWithType:XJImageButtonTypeLeft AndMarginArr:@[@5]];
    btn2.backgroundColor = ColorOfRandom;
    btn2.image = [UIImage imageNamed:@"image3"];
    btn2.text = @"按钮2";
    btn2.contentLabel.textColor = [UIColor redColor];
    btn2.contentLabel.font = [UIFont systemFontOfSize:13];
    btn2.contentLabel.textAlignment =NSTextAlignmentLeft;
    [self.view addSubview:btn2];
    [btn2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.view).offset(100);
        make.left.mas_equalTo(btn1.mas_right).offset(10);
    }];
    
    XJButton *btn3 = [[XJButton alloc] initWithType:XJImageButtonTypeLeft AndMarginArr:@[@5]];
    btn3.backgroundColor = ColorOfRandom;
    btn3.text = @"按钮2";
    btn3.contentLabel.textColor = [UIColor redColor];
    btn3.contentLabel.font = [UIFont systemFontOfSize:13];
    btn3.contentLabel.textAlignment =NSTextAlignmentLeft;
    [self.view addSubview:btn3];
    [btn3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.view).offset(100);
        make.left.mas_equalTo(btn2.mas_right).offset(10);
    }];
    
    XJButton *btn4 = [[XJButton alloc] initWithType:XJImageButtonTypeLeft AndMarginArr:@[@0]];
    btn4.backgroundColor = ColorOfRandom;
    btn4.image = [UIImage imageNamed:@"image3"];
    btn4.contentLabel.textColor = [UIColor redColor];
    btn4.contentLabel.font = [UIFont systemFontOfSize:13];
    btn4.contentLabel.textAlignment =NSTextAlignmentLeft;
    [self.view addSubview:btn4];
    [btn4 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.view).offset(100);
        make.left.mas_equalTo(btn3.mas_right).offset(10);
    }];
    
    XJButton *btn5 = [[XJButton alloc] initWithType:XJImageButtonTypeLeft AndMarginArr:@[@0]];
    [btn5 setNormolImage:[UIImage imageNamed:@"image1"] AndHighLightImage:[UIImage imageNamed:@"image3"]];
    [btn5 setNormolTextColor:[UIColor redColor] AndHighLightTextColor:[UIColor greenColor]];
    [btn5 setNormolLayerColor:[UIColor purpleColor] AndhighLightLayerColor:[UIColor blueColor]];
    btn5.text = @"123123";
    btn5.contentLabel.textColor = [UIColor redColor];
    btn5.contentLabel.font = [UIFont systemFontOfSize:13];
    btn5.contentLabel.textAlignment =NSTextAlignmentLeft;
    btn5.layer.borderWidth = 2;
    [self.view addSubview:btn5];
    [btn5 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(btn1.mas_bottom).offset(10);
        make.left.mas_equalTo(self.view.mas_left).offset(10);
    }];
    
    XJButton *btn6 = [[XJButton alloc] initWithType:XJImageButtonTypeLeft AndMarginArr:@[@10]];
    btn6.backgroundColor = ColorOfRandom;
    btn6.image = [UIImage imageNamed:@"image3"];
    btn6.text = @"123123";
    btn6.contentLabel.textColor = [UIColor redColor];
    btn6.contentLabel.font = [UIFont systemFontOfSize:13];
    btn6.contentLabel.textAlignment =NSTextAlignmentLeft;
    [self.view addSubview:btn6];
    [btn6 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(btn5.mas_bottom).offset(10);
        make.left.mas_equalTo(self.view.mas_left).offset(10);
        make.width.height.mas_equalTo(100);
    }];
    //这样可以移动文字或者图片位置
//    [btn6.imageView updateConstraints:^(MASConstraintMaker *make) {
//        make.left.equalTo(0);
//        make.width.priorityHigh();
//    }];
    [btn6 handleControlEvent:UIControlEventTouchUpInside withBlock:^(id sender) {
        XJButton *btn = sender;
        NSLog(@"%@",btn.text);
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

