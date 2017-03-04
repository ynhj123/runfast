//
//  pickerView.swift
//  runfastaliance
//
//  Created by 杨牛浩江 on 17/3/3.
//  Copyright © 2017年 杨牛浩江. All rights reserved.
//

import UIKit

let ScreenWidth = UIScreen.mainScreen().bounds.width
let ScreenHeight = UIScreen.mainScreen().bounds.height

class pickerView: UIView {
    
    var defaultSelected:((defaultname:String)->())?
    var doubleSelected:((defaultname:String,doublename:String)->())?
    

}
