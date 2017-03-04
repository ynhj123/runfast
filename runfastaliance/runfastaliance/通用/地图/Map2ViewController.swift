//
//  Map2ViewController.swift
//  runfastaliance
//
//  Created by 杨牛浩江 on 17/3/2.
//  Copyright © 2017年 杨牛浩江. All rights reserved.
//

import UIKit

class Map2ViewController: UIViewController,MAMapViewDelegate {
    
    var coordinateArray:[CLLocationCoordinate2D] = []
    var mapView = MAMapView()
    var isRecord = false
    var speed : UILabel!
    var timeController :NSTimer!
    var i = 0
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.startLocation()
    }
    
    func startLocation(){
        self.mapView.showsUserLocation = true
        mapView.userTrackingMode = MAUserTrackingMode.Follow
        mapView.pausesLocationUpdatesAutomatically = false
        mapView.allowsBackgroundLocationUpdates = true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        initMapView()
        Btn()

        
    }
    
    func initMapView() {
        self.mapView.frame = CGRectMake(0, 64, self.view.bounds.width, 400)
        self.view.addSubview(mapView)
//        self.mapView.showsUserLocation = true
        
        //设置定位精度
        self.mapView.desiredAccuracy = kCLLocationAccuracyBestForNavigation
        self.mapView.pausesLocationUpdatesAutomatically = false
        self.mapView.delegate = self
        //        self.mapView.userTrackingMode = .None
        self.mapView.showsScale = true
        //        self.mapView.metersPerPointForZoomLevel(CGFloat(20))
        self.mapView.setZoomLevel(15.5, animated: true)
        self.mapView.distanceFilter = 3.0
        

    }
    
    func Btn() {
        let startBtn = UIButton()
        startBtn.frame = CGRectMake(50, 550, 50, 50)
        startBtn.tintColor = UIColor.cyanColor()
        startBtn.backgroundColor = UIColor.redColor()
        startBtn.addTarget(self, action: #selector(Map2ViewController.starLocation), forControlEvents: .TouchDown)
        startBtn.setTitle("开始", forState: .Normal)
        self.view.addSubview(startBtn)
        let stopBtn = UIButton()
        stopBtn.frame = CGRectMake(350, 550, 50, 50)
        stopBtn.tintColor = UIColor.cyanColor()
        stopBtn.backgroundColor = UIColor.redColor()
        stopBtn.setTitle("关闭", forState: .Normal)
        stopBtn.addTarget(self, action: #selector(Map2ViewController.stopLocation), forControlEvents: .TouchDown)
        self.view.addSubview(stopBtn)
        speed = UILabel.init(frame: CGRectMake(150, 550, 200, 50))
        speed.textColor = UIColor.redColor()
        speed.font = UIFont.italicSystemFontOfSize(15)
        self.view.addSubview(speed)
       
    
    }
    func starLocation(){
        isRecord = true
//        timeController = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "timerText", userInfo: nil, repeats: true)
    }
    func stopLocation(){
        isRecord = false
//        timeController.invalidate()
        self.coordinateArray.removeAll()
    }
    
    func mapView(mapView: MAMapView!, didUpdateUserLocation userLocation: MAUserLocation!, updatingLocation: Bool) {
        if !updatingLocation {
           return
            
        }
        if isRecord == true {
            self.speed.text = "\(userLocation.location.timestamp)"
            let coordinate = userLocation.coordinate
            self.coordinateArray.append(coordinate)
            self.updatePath()
        }
        self.mapView.setCenterCoordinate(userLocation.coordinate, animated: true)
    }
    func updatePath() {
//        let overlays = self.mapView.overlays
//        self.mapView.removeOverlays(overlays)
        let polyline = MAPolyline(coordinates: &self.coordinateArray, count: UInt(self.coordinateArray.count))
        self.mapView.addOverlay(polyline)
        let lastCoord = self.coordinateArray[self.coordinateArray.count-1]
        self.mapView.setCenterCoordinate(lastCoord, animated: true)
        
        
    }
    
    func mapView(mapView: MAMapView!, viewForOverlay overlay: MAOverlay!) -> MAOverlayView! {
        if overlay.isKindOfClass(MAPolyline) {
            let polylineView = MAPolylineView(overlay: overlay)
            polylineView.lineWidth = 1
            polylineView.strokeColor = UIColor.redColor()
            return polylineView
        }
        return nil
    }
    
//    func swapCllocation(coordate:CLLocationCoordinate2D)->CLLocation  {
//        return CLLocation.init(coordinate: <#T##CLLocationCoordinate2D#>, altitude: <#T##CLLocationDistance#>, horizontalAccuracy: <#T##CLLocationAccuracy#>, verticalAccuracy: <#T##CLLocationAccuracy#>, course: <#T##CLLocationDirection#>, speed: <#T##CLLocationSpeed#>, timestamp: <#T##NSDate#>)
//    }
//    func timerText() -> Int{
//        print("==============================")
//        
//        if i > 60 {
//            self.i = 0
//        
//        }
//        i = i + 1
//        speed.text = "\(i)"
//        return i
//    }

  

}
