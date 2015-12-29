//
//  CTTabbarCtrl.m
//  FJTrade
//
//  Created by 胡昆1 on 12/29/15.
//  Copyright © 2015 cn.chutong. All rights reserved.
//

#import "CTTabbarCtrl.h"

@interface CTTabbarCtrl ()

@end

@implementation CTTabbarCtrl

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)setTabBarItemUI
{

    //set tabbarItems font
    for (int i = 0; i < self.tabBar.items.count; i ++) {
        
        UITabBarItem* item = [self.tabBar.items objectAtIndex:i];
        
        UIEdgeInsets insets = UIEdgeInsetsMake(0, 0, 0, 0);
        
        [item setImageInsets:insets];
        
        //设置图片,标题
    
        if (i == 0) {
            
            item.title         = tabItemTitel0;
            item.image         = [UIImage imageNamed:tabItemImage0];
            item.selectedImage = [UIImage imageNamed:tabItemImageSelected0];
            
        }else if (i == 1){
        
            item.title         = tabItemTitel1;
            item.image         = [UIImage imageNamed:tabItemImage1];
            item.selectedImage = [UIImage imageNamed:tabItemImageSelected1];
        
        }else if (i == 2){
            
            item.title         = tabItemTitel2;
            item.image         = [UIImage imageNamed:tabItemImage2];
            item.selectedImage = [UIImage imageNamed:tabItemImageSelected2];
            
        }else if (i == 3){
            
            item.title         = tabItemTitel3;
            item.image         = [UIImage imageNamed:tabItemImage3];
            item.selectedImage = [UIImage imageNamed:tabItemImageSelected3];
            
        }else if (i == 4){
            
            item.title         = tabItemTitel4;
            item.image         = [UIImage imageNamed:tabItemImage4];
            item.selectedImage = [UIImage imageNamed:tabItemImageSelected4];
            
        }
        
        
        
        //设置文字
        [item setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                      [UIFont fontWithName:itemFont size:itemFontSize], UITextAttributeFont,[CTCommen getColor:itemTextColor],UITextAttributeTextColor, nil]
                            forState:UIControlStateNormal];
        
        [item setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                      [UIFont fontWithName:itemFontSelected size:itemFontSizeSelected], UITextAttributeFont,[CTCommen getColor:itemTextColorSelected],UITextAttributeTextColor, nil]
                            forState:UIControlStateSelected];
    }
    
    
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)setViewControllers:(NSArray<__kindof UIViewController *> *)viewControllers
{
    [super setViewControllers:viewControllers];

    [self setTabBarItemUI];

}

- (void)setViewControllers:(NSArray<__kindof UIViewController *> *)viewControllers animated:(BOOL)animated
{

    [super setViewControllers:viewControllers animated:animated];
    
    [self setTabBarItemUI];

}

@end
