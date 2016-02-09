//
//  CDTableViewController.m
//  16-02-06-熔炼-(微博自定义Cell)
//
//  Created by 陈栋 on 16/2/6.
//  Copyright © 2016年 man. All rights reserved.
//

#import "CDTableViewController.h"
#import "CDMicroBlog.h"
#import "CDMicroBlogFrame.h"
#import "CDMicroBlogCell.h"
@interface CDTableViewController ()
@property (nonatomic,strong) NSArray *microBlogFrames;

@end

@implementation CDTableViewController

//懒加载数据
- (NSArray *)microBlogFrames
{
    if (_microBlogFrames==nil) {
     //数据源加载数据
        NSArray *microBlogs = [CDMicroBlog microBlogsList];
        NSMutableArray *frames = [[NSMutableArray alloc] init];
        for (CDMicroBlog *blog in microBlogs) {
            CDMicroBlogFrame * blogFrame = [[CDMicroBlogFrame alloc]init];
            blogFrame.microBlog = blog;
            [frames addObject:blogFrame];
        }
        _microBlogFrames = frames;
        
    }
    return _microBlogFrames;
}

//- (NSArray *)microBlogs
//{
//    if (_microBlogs==nil) {
//        _microBlogs = [CDMicroBlog microBlogsList];
//    }
//    return _microBlogs;
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    //测试懒加载数据
//    NSLog(@"%@",self.microBlogs);
    self.tableView.rowHeight = 200;
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.microBlogFrames.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    CDMicroBlogCell *cell = [CDMicroBlogCell microBlogCellWithTableView:tableView];
    
    cell.microBlogFrame =self.microBlogFrames[indexPath.row];
    
    return cell;
}

#pragma mark -tableView代理方法
//设置行高
- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CDMicroBlogFrame *blogFrame = self.microBlogFrames[indexPath.row];
    return blogFrame.rowHeight;
}













@end
