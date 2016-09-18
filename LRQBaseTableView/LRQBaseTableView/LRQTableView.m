//
//  TwoViewController.m
//  生命周期
//
//  Created by HYB on 16/9/18.
//  Copyright © 2016年 jitao. All rights reserved.
//

#import "LRQTableView.h"
#define MaxRowsInSection 40

@interface LRQTableView () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong)UITableView * tb;

@end

@implementation LRQTableView

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.tb = [[UITableView alloc] initWithFrame:self.view.bounds];
    [self.tb registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    self.tb.dataSource = self;
    self.tb.delegate = self;
    [self.view addSubview:self.tb];
    
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return MaxRowsInSection;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    cell.textLabel.text = @(indexPath.row).stringValue;
    
    return cell;
}

- (void)viewWillAppear:(BOOL)animated {
    NSLog(@"view Will Appear");
}

- (void)viewWillLayoutSubviews {
    NSLog(@"view Will LayoutSubviews");
}

- (void)viewDidLayoutSubviews {
    NSLog(@"view Did LayoutSubviews");
}

- (void)viewDidAppear:(BOOL)animated {
    NSLog(@"view Did Appear");
}

- (void)viewWillDisappear:(BOOL)animated {
    NSLog(@"view will Disappear");
}

- (void)viewDidDisappear:(BOOL)animated{
    NSLog(@"view Did Disappear");
}

- (void)dealloc {
    NSLog(@"dealloc");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
