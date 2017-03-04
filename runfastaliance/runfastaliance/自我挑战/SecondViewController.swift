//
//  SecondViewController.swift
//  runfastaliance
//
//  Created by 杨牛浩江 on 17/3/4.
//  Copyright © 2017年 杨牛浩江. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var mapView = MAMapView()
    var selectPick:UIPickerView!
    var startBtn:UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func createMap() {
        self.mapView = MAMapView.init(frame: CGRectMake(0, 64, self.view.bounds.width, self.view.bounds.width/3))
        self.view.addSubview(mapView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
