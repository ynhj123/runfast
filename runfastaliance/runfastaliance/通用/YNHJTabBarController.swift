//
//  YNHJViewController.swift
//  runfastaliance
//
//  Created by 杨牛浩江 on 17/2/22.
//  Copyright © 2017年 杨牛浩江. All rights reserved.
//

import UIKit

class YNHJTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.creatControllers()
        self.tabBarItemSetting()
        // Do any additional setup after loading the view.
    }
    func tabBarItemSetting(){
        let items = self.tabBar.items
        
        let imageNames = ["1","6","2","5"]
        
        for (i,item) in items!.enumerate() {
            item.image = UIImage.init(named: imageNames[i])?.imageWithRenderingMode(.AlwaysOriginal)
            item.selectedImage = UIImage.init(named: imageNames[i]+"_s")?.imageWithRenderingMode(.AlwaysOriginal)
        }
        self.tabBar.tintColor = UIColor.blueColor()
        
    }
    
    func creatControllers(){
        let one = FirstViewController()
        one.title = "自我挑战"
        let nav1 = YNHJNavigationController(rootViewController: one)
        
        let two = twoViewController()
        two.title = "匹配比赛"
        let nav2 = YNHJNavigationController(rootViewController: two)
        
        let three = ThreeViewController()
        three.title = "排行榜"
        let nav3 = YNHJNavigationController(rootViewController: three)
        
        let four = MyViewController()
        four.title = "我的"
        let nav4 = YNHJNavigationController(rootViewController: four)
        
        self.viewControllers = [nav1,nav2,nav3,nav4]
    }

}
