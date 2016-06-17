//
//  LeftTableView.m
//  LoveFace
//
//  Created by jecansoft on 16/3/11.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "LeftTableView.h"

@interface LeftTableView()<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic,strong) NSArray *arrayImage;
@property (nonatomic,strong) NSArray *arrayTilte;


@end


@implementation LeftTableView

- (NSArray *)arrayImage{
    if (_arrayImage == nil) {
        _arrayImage = [NSArray array];
    }
    return _arrayImage;
}


- (NSArray *)arrayTilte{
    if (_arrayTilte == nil) {
        _arrayTilte = [NSArray array];
    }
    return _arrayTilte;
}


- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    
    _arrayTilte = @[@"我的商城",@"QQ钱包",@"个性装扮",@"我的收藏",@"我的相册",@"我的文件"];
    _arrayImage = @[@"sidebar_business",@"sidebar_purse",@"sidebar_decoration",@"sidebar_favorit",@"sidebar_album",@"sidebar_file"];
    
    self.delegate = self;
    self.dataSource = self;
    
    self.separatorStyle = NO;
    
    return self;
}


#pragma mark - tableview delegate datasource
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifier = @"cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        
    }
    cell.textLabel.text = _arrayTilte[indexPath.row];
    cell.imageView.image = [UIImage imageNamed:_arrayImage[indexPath.row]];
    
    
    return cell;
}

- (NSInteger)numberOfRowsInSection:(NSInteger)section{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 6;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSLog(@"%@",indexPath);
}



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
