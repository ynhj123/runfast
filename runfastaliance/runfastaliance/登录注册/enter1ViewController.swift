//
//  enter1ViewController.swift
//  runfastaliance
//
//  Created by 杨牛浩江 on 17/2/22.
//  Copyright © 2017年 杨牛浩江. All rights reserved.
//

import UIKit

class enter1ViewController: UIViewController {
    @IBOutlet weak var phone: UIButton!
    
    @IBOutlet weak var wxBtn: UIButton!
    
    @IBOutlet weak var qqBtn: UIButton!
    
    @IBOutlet weak var wbBtn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        phone.layer.masksToBounds = true
        phone.layer.cornerRadius = 25
        wxBtn.layer.masksToBounds = true
        wxBtn.layer.cornerRadius = 25
        qqBtn.layer.masksToBounds = true
        qqBtn.layer.cornerRadius = 25
        qqBtn.layer.borderWidth = 1
        qqBtn.layer.borderColor = UIColor.lightGrayColor().CGColor
        wbBtn.layer.masksToBounds = true
        wbBtn.layer.cornerRadius = 25
        wbBtn.layer.borderColor = UIColor.lightGrayColor().CGColor
        wbBtn.layer.borderWidth = 1


    }


    @IBAction func phoneAction(sender: UIButton) {
        self.presentViewController(enter2ViewController(), animated: true, completion: nil)
    }

}
