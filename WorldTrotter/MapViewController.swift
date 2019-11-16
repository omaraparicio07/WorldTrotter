//
//  MapViewController.swift
//  WorldTrotter
//
//  Created by Makingdevs on 16/11/19.
//  Copyright © 2019 Makingdevs. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {
    var mapView:MKMapView!
    
    override func loadView() {
        mapView=MKMapView()
        view = mapView
        
        let segmentedControl = UISegmentedControl(items: ["Standard", "Hybrid", "Satellite"])
        segmentedControl.backgroundColor = UIColor.white.withAlphaComponent(0.5)
        segmentedControl.selectedSegmentIndex = 0
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(segmentedControl)
        
        let topConstraint = segmentedControl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8)
        let leadingContrain = segmentedControl.leadingAnchor.constraint(equalTo: view.leadingAnchor)
        let trailingConstrait = segmentedControl.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        
        topConstraint.isActive = true
        leadingContrain.isActive = true
        trailingConstrait.isActive = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("MapViewController loaded its view")
    }
}

