//
//  StatusView.swift
//  runfastaliance
//
//  Created by 杨牛浩江 on 17/2/26.
//  Copyright © 2017年 杨牛浩江. All rights reserved.
//

import UIKit

class StatusView: UIView {

    var control = UIButton()
    var textView = UITextView()
    var isOpen:Bool!
    var originFrame = CGRect()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.isOpen = true
        self.originFrame = self.frame
        
        self.backgroundColor = UIColor.blackColor().colorWithAlphaComponent(0.4)
        self.control = UIButton.init(type: .Custom)
        self.control.frame = CGRectMake(0, 0, self.bounds.width, 20)
        self.control.backgroundColor = UIColor.blackColor().colorWithAlphaComponent(0.6)
        self.control.setTitle("Open", forState: .Normal)
        self.control.addTarget(self, action: "actionSwicth", forControlEvents: .TouchUpInside)
        self.addSubview(self.control)
        
        self.textView = UITextView.init(frame: CGRectMake(0, 20, self.bounds.width, self.bounds.height-20))
        self.textView.backgroundColor = UIColor.clearColor()
        self.textView.textColor = UIColor.whiteColor()
        self.textView.font = UIFont.systemFontOfSize(12)
        self.textView.editable = false
        self.textView.selectable = false
        self.addSubview(textView)
        
            
        
    }
    
    func actionSwitch() {
        isOpen = !isOpen
        if((isOpen) != nil)
        {
            control.setTitle("open", forState: .Normal)
            UIView.animateWithDuration(0.25, animations: { 
                self.frame = self.originFrame
                self.textView.frame = CGRectMake(0, 20, self.frame.size.width, self.frame.size.height-20)
            })
        }else{
            control.setTitle("close", forState: .Normal)
            UIView.animateWithDuration(0.25, animations: { 
                self.frame = CGRectMake(self.originFrame.origin.x, self.originFrame.origin.y, self.originFrame.size.width, 20)
                self.textView.frame = CGRectMake(0, 0, 0, 0)
            })
        }
    }
    
    func showStatusWith(location:CLLocation) {
        
      let info =  NSMutableString.init()
        info.appendString("coordinate:\n")
        info.appendString(NSString.init(format: "\(location.coordinate.latitude) ,\(location.coordinate.longitude)") as String)
        info .appendString("speed:\n");
        
        let speed = location.speed > 0 ? location.speed : 0
        info .appendString(NSString.init(format: "\(speed)m/s,\(speed*3.6)km/h" ) as String)
        info .appendString("accuracy:/n")
        info.appendString(NSString.init(format: "\(location.horizontalAccuracy)m/n" ) as String)
        info.appendString("altitude:/n")
        info .appendString(NSString.init(format: "\(location.altitude)") as String)
        self.textView.text = info as String
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    

}
