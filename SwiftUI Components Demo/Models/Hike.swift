//
//  Hike.swift
//  SwiftUI Components Demo
//
//  Created by Michel Teixeira on 22/10/19.
//  Copyright © 2019 Michel Teixeira. All rights reserved.
//

import Foundation
import SwiftUI

struct Hike: Identifiable {
    let id = UUID()
    let name: String
    let imageURL: String
    let miles: Double
}

extension Hike {
    static func all() -> [Hike] {
        return [
            Hike(name: "Hike1", imageURL: "img", miles: 10),
            Hike(name: "Hike2", imageURL: "img", miles: 10),
            Hike(name: "Hike3", imageURL: "img", miles: 2),
        ]
    }
}
