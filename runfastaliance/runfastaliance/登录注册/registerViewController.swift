//
//  registerViewController.swift
//  runfastaliance
//
//  Created by 杨牛浩江 on 17/2/22.
//  Copyright © 2017年 杨牛浩江. All rights reserved.
//

import UIKit

class registerViewController: UIViewController {
    
    
    @IBOutlet weak var registerBtn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backAction(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    @IBAction func baseAction(sender: AnyObject) {
        self.presentViewController(basicRegisterViewController(), animated: true, completion: nil)
    }
   

}
