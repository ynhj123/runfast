//
//  enter2ViewController.swift
//  runfastaliance
//
//  Created by 杨牛浩江 on 17/2/22.
//  Copyright © 2017年 杨牛浩江. All rights reserved.
//

import UIKit

class enter2ViewController: UIViewController {

    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var registerBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        BtnUI()

       
    }
    func BtnUI() {
        self.loginBtn.layer.masksToBounds = true
        self.loginBtn.layer.cornerRadius = 25
        self.registerBtn.layer.masksToBounds = true
        self.registerBtn.layer.cornerRadius = 25
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

 
    @IBAction func loginAction(sender: UIButton) {
        self.presentViewController(YNHJTabBarController(), animated: true, completion: nil)
    }

    @IBAction func registerAction(sender: UIButton) {
        self.presentViewController(registerViewController(), animated: true, completion: nil)
    }
    
    @IBAction func backAction(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
}
