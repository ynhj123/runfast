//
//  YNHJNavigationController.swift
//  runfastaliance
//
//  Created by 杨牛浩江 on 17/2/22.
//  Copyright © 2017年 杨牛浩江. All rights reserved.
//

import UIKit

class YNHJNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.navigationBar.barTintColor = UIColor.init(red: 55/255.0, green: 205.0/255.0, blue: 255.0/255.0, alpha: 1)
        self.navigationBar.titleTextAttributes = [NSFontAttributeName:UIFont.systemFontOfSize(20),NSForegroundColorAttributeName:UIColor.whiteColor()]
        // Do any additional setup after loading the view.
    }

   

}
