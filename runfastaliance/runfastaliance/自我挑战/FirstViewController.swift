//
//  FirstViewController.swift
//  runfastaliance
//
//  Created by 杨牛浩江 on 17/2/22.
//  Copyright © 2017年 杨牛浩江. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var startBtn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        startBtn.layer.masksToBounds = true
        startBtn.layer.cornerRadius = 50
        startBtn.layer.borderWidth = 1
        startBtn.layer.borderColor = UIColor.cyanColor().CGColor
        startBtn.addTarget(self, action: "startAction", forControlEvents: .TouchUpInside)
        
        let leftBtn = UIButton.init(frame: CGRectMake(0, 0, 32, 32))
        leftBtn.setImage(UIImage.init(named: "air.png"), forState: .Normal)
//        leftBtn.addTarget(<#T##target: AnyObject?##AnyObject?#>, action: <#T##Selector#>, forControlEvents: <#T##UIControlEvents#>)
        let leftBtnItem = UIBarButtonItem.init(customView: leftBtn)
        self.navigationItem.leftBarButtonItem = leftBtnItem
        
        let rightBtn = UIButton.init(frame: CGRectMake(0, 0, 32, 32))
        rightBtn.setImage(UIImage.init(named: "xx.png"), forState: .Normal)
        //        rightBtn.addTarget(<#T##target: AnyObject?##AnyObject?#>, action: <#T##Selector#>, forControlEvents: <#T##UIControlEvents#>)
        self.navigationItem.rightBarButtonItem = UIBarButtonItem.init(customView: rightBtn)
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func startAction(){
        self.navigationController?.pushViewController(SecondViewController(), animated: true)
    }

 
}
