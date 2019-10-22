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
    // Images from https://cadeodrone.com.br
    static func all() -> [Hike] {
        return [
            Hike(name: "Hike1", imageURL: "img-10", miles: 10),
            Hike(name: "Hike2", imageURL: "img-12", miles: 10),
            Hike(name: "Hike3", imageURL: "img-13", miles: 2),
        ]
    }
}
