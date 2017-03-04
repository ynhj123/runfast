//
//  tipView.swift
//  runfastaliance
//
//  Created by 杨牛浩江 on 17/2/26.
//  Copyright © 2017年 杨牛浩江. All rights reserved.
//

import UIKit

class tipView: UIView {

    var label = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.label = UILabel.init(frame: self.bounds)
        self.backgroundColor = UIColor.blueColor().colorWithAlphaComponent(0.8)
        self.autoresizingMask = UIViewAutoresizing.FlexibleTopMargin
        
        self.label.textAlignment = NSTextAlignment.Center
        self.label.autoresizingMask = UIViewAutoresizing.FlexibleWidth
        self.label.textColor = UIColor.whiteColor()
        self.label.text = "tip"
        self.label.font = UIFont.systemFontOfSize(20)
        self.addSubview(self.label)
    }
    
    func showTip(tip:NSString) {
        self.label.text = tip as String
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
