//
//  ViewController.m
//  embedded-react-native
//
//  Created by 李孟純 on 3/8/16.
//  Copyright © 2016 limengchun. All rights reserved.
//

#import "ViewController.h"
#import "ReactView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ReactView * reactView = [[ReactView alloc] initWithFrame:CGRectMake(0, 40, CGRectGetWidth(self.view.bounds), 600)];
    
    [self.view addSubview:reactView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end