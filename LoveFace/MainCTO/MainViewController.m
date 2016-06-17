//
//  MainViewController.m
//  LoveFace
//
//  Created by jecansoft on 16/3/10.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "MainViewController.h"
#import "MessViewController.h"
#import "PersonViewController.h"


@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(onCilckPanGesture:)];
    
    
    [self.view addGestureRecognizer:panGesture];
    
    ////添加  主界面
    [self addLoadSubController];
    
    
}

- (void)onCilckPanGesture:(UIPanGestureRecognizer *)pangesture{
    
    ///获取手指滑动时，平移的距离
    CGPoint translation = [pangesture translationInView:pangesture.view];
    
    ///让当前控件 做响应平移
    pangesture.view.transform = CGAffineTransformTranslate(pangesture.view.transform, translation.x, 0);
    
    [[[UIApplication sharedApplication].delegate window].subviews objectAtIndex:1].transformX = pangesture.view.transformX/3;
    
    ///每次平移手势识别完毕后, 让平移的值不要累加
    [pangesture setTranslation:CGPointZero inView:pangesture.view];
    
    
    //获取最右边范围
    CGAffineTransform rightScopeTransform = CGAffineTransformTranslate([[UIApplication sharedApplication].delegate window].transform, ScreenWidth*0.75, 0);
    
    //    当移动到右边极限时
    if (pangesture.view.transform.tx > rightScopeTransform.tx) {
        
        ////限制最右边的范围
        pangesture.view.transform = rightScopeTransform;
        
        ////限制透明View 最右边的范围
        [[[UIApplication sharedApplication].delegate window].subviews objectAtIndex:1].transformX = pangesture.view.transformX/3;
        
        
    }
    else if (pangesture.view.transform.tx < 0.0f){  ////当移动到左边极限范围的时候
        
        ////限制最左边的范围
        pangesture.view.transform = CGAffineTransformTranslate([[UIApplication sharedApplication].delegate window].transform, 0, 0);
        
        ///限制透明view 的最做左边的范围
        [[[UIApplication sharedApplication].delegate window].subviews objectAtIndex:1].transformX = pangesture.view.transformX/3;
        
        
        
    }
    
    /////当手势结束的时候   有一个返回的动画
    if (pangesture.state == UIGestureRecognizerStateEnded) {
        [UIView animateWithDuration:0.2 animations:^{
            
            ////当滑动距离大于 屏幕的一半时候 就把主界面
            if (pangesture.view.orightX > ScreenWidth*0.5) {
                pangesture.view.transform = rightScopeTransform;
                
                [[[UIApplication sharedApplication].delegate window].subviews objectAtIndex:1].transformX = pangesture.view.transformX/3;
                
            }else{
                
                ////当滑动小于屏幕的一半的  返还原来
                pangesture.view.transform = CGAffineTransformIdentity;
                
                [[[UIApplication sharedApplication].delegate window].subviews objectAtIndex:1].transformX = pangesture.view.transformX/3;
                
                
            }
        }];
    }
    
}


#pragma mark -- 添加 子控制器)
- (void)addLoadSubController{
    ////消息
    MessViewController *messCtl = [[MessViewController alloc]init];
    
    UINavigationController *nav1 = [self addNavgationAndTabbarCtl:messCtl Title:@"消息" image:@"tab_recent_nor@3x"];
    
    ////个人中心
    PersonViewController *personCtl = [[PersonViewController alloc]init];
    UINavigationController *nav2 = [self addNavgationAndTabbarCtl:personCtl Title:@"个人中心" image:@"tab_buddy_nor@3x"];
    
    
    ////
    
    
    
    self.viewControllers = @[nav1,nav2];
    
}

- (UINavigationController *)addNavgationAndTabbarCtl:(UIViewController *)ctl  Title:(NSString *)title image:(NSString *)imageStr{
    
    UINavigationController *navCtl = [[UINavigationController alloc]initWithRootViewController:ctl];
    navCtl.tabBarItem.title = title;
    navCtl.tabBarItem.image = [UIImage imageNamed:imageStr];
    
    return navCtl;
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
