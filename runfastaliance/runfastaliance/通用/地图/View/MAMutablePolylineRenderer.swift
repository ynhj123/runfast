//
//  MAMutablePolylineRenderer.swift
//  runfastaliance
//
//  Created by 杨牛浩江 on 17/3/1.
//  Copyright © 2017年 杨牛浩江. All rights reserved.
//

import UIKit

class MAMutablePolylineRenderer: MAOverlayPathRenderer {
    
//    let overlay: MAOverlayRenderer 
   
    override func createPath() {
        let path = CGPathCreateMutable()
        let overlat = self.overlay as! MAMutablePolyline
        if overlat.pointArray.count > 0 {
            let point:CGPoint = self.pointForMapPoint(overlat.mapPointForPonintAt(0))
            CGPathMoveToPoint(path, nil, point.x, point.y)
            
        }
        for i in 0..<overlat.pointArray.count {
            
            let point = self.pointForMapPoint(overlat.mapPointForPonintAt(i))
            CGPathAddLineToPoint(path, nil, point.x, point.y)
        }
        self.path = path
    }
    override func fillPath(path: CGPath!, inContext context: CGContext!) {
        return
    }
    
}
