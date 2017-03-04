//
//  SystemInfoView.swift
//  runfastaliance
//
//  Created by 杨牛浩江 on 17/2/26.
//  Copyright © 2017年 杨牛浩江. All rights reserved.
//

import UIKit

class SystemInfoView: UIView {

    var textView = UITextView()
    var timer = NSTimer()
    var highestMemory = Double()
    var highestCpu = CGFloat()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.blueColor().colorWithAlphaComponent(0.4)
        self.textView = UITextView.init(frame: CGRectMake(0, 0, self.bounds.width, self.bounds.height))
        self.textView.backgroundColor = UIColor.clearColor()
        self.textView.textColor = UIColor.whiteColor()
        self.textView.font = UIFont.systemFontOfSize(14)
        self.textView.editable = false
        self.textView.selectable = false
        
        self.addSubview(self.textView)
        self.highestCpu = 0
        self.highestMemory = 0
        self.timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "updateSystenInfo", userInfo: nil, repeats: true)
        
    }
    
    func updateSystenInfo() {
//        var memory:Double =
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
