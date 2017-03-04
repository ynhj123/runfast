
//  MAMutablePolyline.swift
//  runfastaliance
//
//  Created by 杨牛浩江 on 17/2/27.
//  Copyright © 2017年 杨牛浩江. All rights reserved.
//

import UIKit



class MAMutablePolyline: NSObject {
    
    
    var pointArray:NSMutableArray! = NSMutableArray()

    var coordinate: CLLocationCoordinate2D!
    var boundingMapRect: MAMapRect!

//    override init() {
//        super.init()
//    }
 
 
    func showRect() -> MAMapRect{
    return self.BoundingMapRect()
    }
    
    func updatePoints(points:NSArray) {
        self.pointArray.addObjectsFromArray(points as [AnyObject])
//        self
//        self.pointArray
//        points
//        NSArray.init(array: <#T##[AnyObject]#>)
//        self.pointArray = NSMutableArray(array: points)
        self.calculateBoundingMapRect()
  
        
    }
    func appendPoint(point:MAMapPoint) {
//        self.pointArray.addObject(MAMapPoint(point))
//        NSValue(MAMapPoint: <#T##MAMapPoint#>)
        
        self.pointArray.addObject(NSValue(MAMapPoint: point))
        
        
        
        
//        self.pointArray.addObject(NSValue(MAMapPoint: <#T##MAMapPoint#>))
        self.calculateBoundingMapRect()
        
    }
    func mapPointForPonintAt(index:Int)->MAMapPoint{
        let value:NSValue = self.pointArray.objectAtIndex(index) as! NSValue
        return value.MAMapPointValue()
    }
    
    func calculateBoundingMapRect(){
        if (self.pointArray.count > 0) {
            var minX:Double = 0;
            var minY:Double = 0;
            var maxX:Double = 0;
            var maxY:Double = 0;
            var index = 0;
            for value in self.pointArray{
                if (index == 0) {
                    
                    let point0:MAMapPoint = value.MAMapPointValue()
                    minX = Double(point0.x)
                    minY = Double(point0.y)
                    maxX = minX
                    maxY = minY
                }else {
                    let point:MAMapPoint = value.MAMapPointValue()
                    if (Double(point.x) < minX) {
                        minX = Double(point.x)
                    }
                    if (Double(point.x) > maxX){
                        maxX = Double(point.x)
                    }
                    if (Double(point.y) < minY) {
                        minY = Double(point.y)
                    }
                    if (Double(point.y) > maxY){
                        maxY = Double(point.y)
                    }
                }
                index += 1
            }
            self.boundingMapRect = MAMapRectMake(minX, minY, fabs(maxX-minX), fabs(maxY-minY))
        }
    }
    

    
//    init(nsvaluePoints:NSArray,coordinate:CLLocationCoordinate2D,boundingMapRect:MAMapRect) {
//        super.init()
//        self.boundingMapRect = boundingMapRect
//        self.coordinate = MACoordinateForMapPoint(MAMapPointMake(MAMapRectGetMidX(self.boundingMapRect), MAMapRectGetMidY(self.boundingMapRect)))
//        self.updatePoints(nsvaluePoints)
//        return
//    }
//    override init() {
//        super.init()
//        
//
//    }
//    func initwithPoints(nsvaluePoints:NSArray) {
//        self.updatePoints(nsvaluePoints)
//        return
//    }
    override init() {
        super.init()
    }
    
    
        init(nsvaluePoints:NSArray) {
        super.init()
        self.updatePoints(nsvaluePoints)
        print(1)
        print(nsvaluePoints)
        return
    }
//    init(boundingMapRect:MAMapRect) {
//        return self.boundingMapRect = boundingMapRect
//    }
 
    func BoundingMapRect() ->MAMapRect{
        return self.boundingMapRect
    }
    func  Coordinate() -> CLLocationCoordinate2D {
        return  MACoordinateForMapPoint(MAMapPointMake(MAMapRectGetMidX(self.boundingMapRect), MAMapRectGetMidY(self.boundingMapRect)))
    }

    


}
