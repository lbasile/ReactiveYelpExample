//
//  Business.swift
//  ReactiveYelpExample
//
//  Created by Louis Basile on 3/10/18.
//  Copyright © 2018 Louis Basile. All rights reserved.
//

import Foundation
import CoreLocation

struct Business: Codable {
    var rating: Int
    var price: String
    var id: String
    var reviewCount: Int
    var name: String
    var url: URL
//    var coordinates: CLLocationCoordinate2D
}
