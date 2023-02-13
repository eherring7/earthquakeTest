//
//  ViewController.swift
//  USGS-Seismic
//
//  Created by J McAuley on 3/27/20.
//  Copyright © 2020 USEngineering Solutions. All rights reserved.
//

import Foundation
import UIKit


class SeismicTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
        
    @IBOutlet weak var refreshButton: UIBarButtonItem!
        
    @IBOutlet weak var tableView: UITableView!
    
    static let url : String = "https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/2.5_day.geojson"

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EarthquakeCell", for: indexPath)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
}

