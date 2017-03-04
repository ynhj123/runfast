//
//  basicRegisterViewController.swift
//  runfastaliance
//
//  Created by 杨牛浩江 on 17/2/23.
//  Copyright © 2017年 杨牛浩江. All rights reserved.
//

import UIKit

class basicRegisterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveAction(sender: AnyObject) {
        self.presentViewController(YNHJTabBarController(), animated: true, completion: nil)
    }

    @IBAction func missAction(sender: AnyObject) {
         self.presentViewController(YNHJTabBarController(), animated: true, completion: nil)
    }
   
}
