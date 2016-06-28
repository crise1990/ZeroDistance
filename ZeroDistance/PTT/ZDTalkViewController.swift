//
//  ZDTalkViewController.swift
//  ZeroDistance
//
//  Created by zhangkuo on 16/6/23.
//  Copyright © 2016年 mac. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ZDTalkViewController: UIViewController {
    
    @IBOutlet weak var containView: UIView!

    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var TalkView: UIView!
    @IBOutlet weak var talkBtn: UIButton!
    
    let locationManager: CLLocationManager = CLLocationManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        hidesBottomBarWhenPushed = true

        navigationController?.navigationBar.translucent = true
        title = "对讲组01"
        talkBtn.setImage(UIImage(named: "talk"), forState: UIControlState.Normal)
        talkBtn.setImage(UIImage(named: "talk-sec"), forState: UIControlState.Highlighted)
        TalkView.layer.cornerRadius = 20
        TalkView.layer.masksToBounds = true
        TalkView.hidden = true
        
        mapView.mapType = MKMapType.Standard
        
        let latDelta = 0.05
        let longDelta = 0.05
        let currentLocationSpan: MKCoordinateSpan = MKCoordinateSpanMake(latDelta, longDelta)
        let center:CLLocation = CLLocation(latitude: 38.029171, longitude: 114.788231)
        let currentRegion: MKCoordinateRegion = MKCoordinateRegion(center: center.coordinate, span: currentLocationSpan)
        mapView.setRegion(currentRegion, animated: true)
    }


    @IBAction func btnTouchDown(sender: AnyObject) {

        TalkView.hidden = false
    }
  
    @IBAction func btnTouchUpInside(sender: AnyObject) {
        TalkView.hidden = true
    }
    
  
    
}
