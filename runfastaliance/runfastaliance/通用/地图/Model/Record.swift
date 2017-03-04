//
//  Record.swift
//  runfastaliance
//
//  Created by 杨牛浩江 on 17/2/28.
//  Copyright © 2017年 杨牛浩江. All rights reserved.
//

import UIKit

class Record: NSObject {
    var locationsArray:NSMutableArray? = nil
    
    func addlocation(location:CLLocation){
        self.locationsArray?.addObject(location)
    }
//    var startTime:NSData
//    
//    var endTime:NSData
    
//    var locationArray:NSMutableArray? = nil
//    
//    var distance :Double = 0
//    
//    var coords:CLLocationCoordinate2D
//    
//    func startLocation()-> CLLocation{
//       return (self.locationArray?.firstObject)! as! CLLocation
//    }
//    func endLocation() -> CLLocation{
//        return (self.locationArray?.lastObject)! as! CLLocation
//    }
    
//    func coordinates()->CLLocationCoordinate2D {
//        if (self.coords !)
//        }
//    }

//     override init() {
//     self.startTime =
//
//        
//    }
    
}
