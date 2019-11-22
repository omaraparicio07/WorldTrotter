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
        
        segmentedControl.addTarget(self,action: #selector(MapViewController.mapTypeChanged(_:)),for: .valueChanged)
        
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
    
    @objc
    func mapTypeChanged(_ segControl: UISegmentedControl) { switch segControl.selectedSegmentIndex {
    case 0:
    mapView.mapType = .standard case 1:
    mapView.mapType = .hybrid case 2:
    mapView.mapType = .satellite default:
    break }
    }
}

