//
//  HikesView.swift
//  SwiftUI Components Demo
//
//  Created by Michel Teixeira on 22/10/19.
//  Copyright © 2019 Michel Teixeira. All rights reserved.
//

import SwiftUI

struct HikesView: View {
    let hikes = Hike.all()

    var body: some View {
        List(hikes) { hike in
            Text(hike.name)

        }
    }
}

struct HikesView_Previews: PreviewProvider {
    static var previews: some View {
        HikesView()
    }
}
