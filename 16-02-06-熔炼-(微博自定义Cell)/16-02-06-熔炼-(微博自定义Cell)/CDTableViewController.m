//
//  CDTableViewController.m
//  16-02-06-熔炼-(微博自定义Cell)
//
//  Created by 陈栋 on 16/2/6.
//  Copyright © 2016年 man. All rights reserved.
//

#import "CDTableViewController.h"
#import "CDMicroBlog.h"
@interface CDTableViewController ()
@property (nonatomic,strong) NSArray *microBlogs;

@end

@implementation CDTableViewController

//懒加载数据
- (NSArray *)microBlogs
{
    if (_microBlogs==nil) {
        _microBlogs = [CDMicroBlog microBlogsList];
    }
    return _microBlogs;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    //测试懒加载数据
    NSLog(@"%@",self.microBlogs);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return 0;
}



@end
