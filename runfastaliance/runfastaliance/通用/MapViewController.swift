//
//  MapViewController.swift
//  runfastaliance
//
//  Created by 杨牛浩江 on 17/2/24.
//  Copyright © 2017年 杨牛浩江. All rights reserved.
//

import UIKit

class MapViewController: UIViewController,AMapLocationManagerDelegate,MAMapViewDelegate {
//    class MapViewController: UIViewController{

    let mapView = MAMapView()
//    let search = AMapSearchAPI()
//    let mapLocation = AMapLocationManager()
    let startBtn = UIButton()
    let stopBtn = UIButton()
    let locationPoint = CLLocation()
    let locationArray:NSMutableArray!=NSMutableArray()
    var isRecording:Bool! = false
    var render = MAMutablePolylineRenderer()
    var playline = MAMutablePolyline()
    
    let line = AMapLocationPolygonRegion()
    var currentRecord = Record()
    
    
   override func viewDidLoad() {
        setMapView()
           startBtn.frame = CGRectMake(50, 550, 50, 50)
        startBtn.tintColor = UIColor.cyanColor()
        startBtn.backgroundColor = UIColor.redColor()
        startBtn.addTarget(self, action: #selector(MapViewController.starLocation), forControlEvents: .TouchDown)
        startBtn.setTitle("开始", forState: .Normal)
        self.view.addSubview(startBtn)
        stopBtn.frame = CGRectMake(350, 550, 50, 50)
        stopBtn.tintColor = UIColor.cyanColor()
        stopBtn.backgroundColor = UIColor.redColor()
        stopBtn.setTitle("关闭", forState: .Normal)
        stopBtn.addTarget(self, action: #selector(MapViewController.stopLocation), forControlEvents: .TouchDown)
        self.view.addSubview(stopBtn)
//        location()
//        mapView.pausesLocationUpdatesAutomatically = false
//        mapView.mapType = .Standard
//        mapView.setUserTrackingMode(.FollowWithHeading, animated: true)
        print(mapView.userLocation)
//        mapView.userTrackingMode = .FollowWithHeading
//        mapView.showsUserLocation = true
//        mapView.setRegion(<#T##region: MACoordinateRegion##MACoordinateRegion#>, animated: <#T##Bool#>)
//        mapLocation.allowsBackgroundLocationUpdates = true
//        mapLocation.locationTimeout = 4
//        mapLocation.monitoredRegions
//        mapLocation.pausesLocationUpdatesAutomatically = false
//        mapLocation.requestLocationWithReGeocode(true) { (a, b, c) in
//            
//            print(a,b,c)
//        }
//        mapLocation.startUpdatingLocation()
//        mapLocation.stopUpdatingLocation()
//        mapLocation
        
    }
    func setMapView(){
        self.mapView.frame = CGRectMake(0, 64, self.view.bounds.width, 400)
        self.view.addSubview(mapView)
        self.mapView.showsUserLocation = true
        self.mapView.distanceFilter = 10;
        //设置定位精度
        self.mapView.desiredAccuracy = kCLLocationAccuracyBestForNavigation
        self.mapView.pausesLocationUpdatesAutomatically = false
        self.mapView.delegate = self
//        self.mapView.userTrackingMode = .None
        self.mapView.showsScale = true
//        self.mapView.metersPerPointForZoomLevel(CGFloat(20))
        self.mapView.setZoomLevel(20, animated: true)
//        var cllocattion2d = CLLocationCoordinate2D()
//        cllocattion2d.latitude = 104.06
//            cllocattion2d.longitude = 30.67
//        var span = MACoordinateSpan()
//        span.latitudeDelta = 1
//        span.longitudeDelta = 1
////        self.mapView.setRegion(MACoordinateRegion, animated: <#T##Bool#>)
//        self.mapView.setRegion(MACoordinateRegion.init(center: cllocattion2d, span: span), animated: true)
        
        
    }
    
//    func location() {
//        mapLocation.delegate = self
//        mapLocation.pausesLocationUpdatesAutomatically = false
//        mapLocation.allowsBackgroundLocationUpdates = true
//        return
//    }
    
    func starLocation(){
//        locationArray.removeAllObjects()
//        self.mapLocation.startUpdatingLocation()
        self.isRecording = true
        
        print(1)
    }
    
    func stopLocation(){
//        self.mapLocation.stopUpdatingLocation()
        self.isRecording = false
//        linemap()
//        locationArray.removeAllObjects()
        print(2)
    }
    func amapLocationManager(manager: AMapLocationManager!, didFailWithError error: NSError!) {
        print(manager)
        print(error)
    }
    func amapLocationManager(manager: AMapLocationManager!, didUpdateLocation location: CLLocation!) {
//        locationArray.addObject(location)
        print(location.coordinate.longitude)
        print(location.coordinate.latitude)
        print(location.horizontalAccuracy)
    }
    //绘制折现
    func linemap(){
        
        //构造折线对象
//        var commonPolylineArray = [CLLocationCoordinate2D(),CLLocationCoordinate2D(),CLLocationCoordinate2D(),CLLocationCoordinate2D()]
//        commonPolylineArray[0].latitude = 39.832136
//        commonPolylineArray[0].longitude = 116.34095
//         commonPolylineArray[1].latitude = 39.832136;
//         commonPolylineArray[1].longitude = 116.42095;
//        
//         commonPolylineArray[2].latitude = 39.902136;
//        commonPolylineArray[2].longitude = 116.42095;
//        
//        commonPolylineArray[3].latitude = 39.902136;
//         commonPolylineArray[3].longitude = 116.44095;
        
    
//        for item in locationArray{
////            let doline = MAPolyline.init(coordinates: item as! CLLocationCoordinate2D, count: locationArray.count)
//        let doline1 = MAPolyline.init(points: item as! UnsafeMutablePointer, count: UInt(locationArray.count))
//            
//            mapView.addOverlay(doline1)
//        }
        
//        MAPolylineRenderer
        
    
        
        
    }
    
    
//    let mapView = MAMapView()
//    let statusView = StatusView()
//    let TipView = tipView()
//    let locationBtn = UIButton()
//    let imageLocation = UIImage()
//    let imageNotLocation = UIImage()
//    var isRecording:Bool = true
//    var mutablePolyline = MAMultiPolyline()
//    var render = MAMultiColoredPolylineRenderer()
//    var locationsArray:NSMutableArray? = nil
////    var currentRecord = Record()
//        override func viewDidLoad() {
//            super.viewDidLoad()
//            title = "my route"
//            
//        }

    func mapView(mapView: MAMapView!, didUpdateUserLocation userLocation: MAUserLocation!, updatingLocation: Bool) {
        if (!updatingLocation) {
            return;
        }
        
        if(self.isRecording==true) {
            self.locationArray.addObject(userLocation.location)
            print("===============================")
            print(userLocation.location.timestamp)
            if (userLocation.location.horizontalAccuracy<80 && userLocation.location.horizontalAccuracy > 0) {

                self.currentRecord.addlocation(userLocation.location)
                print(userLocation.location.timestamp)
                playline.appendPoint(MAMapPointForCoordinate(userLocation.location.coordinate))
                
             
                //设置地图中心
                self.mapView.setCenterCoordinate(userLocation.location.coordinate, animated: true)
                self.render.invalidatePath()
                
            }
        }
    }
    
//    func mapView(mapView: MAMapView!, rendererForOverlay overlay: MAOverlay!) -> MAOverlayRenderer! {
//        
//        let render = MAMutablePolylineRenderer(overlay: overlay)
//        render.lineWidth = 4.0
//        render.strokeColor = UIColor.redColor()
//        self.render = render
//        return render
//        
//    }
    

    
    
  
}
