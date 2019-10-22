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
            HStack {
                Image(hike.imageURL)
                    .resizable()
                    .frame(width: 100, height: 100)
                    .cornerRadius(16)

                VStack(alignment: .leading) {
                    Text(hike.name)
                    Text(String(format: "%.2f", hike.miles))
                }
            }
        }
    }
}

struct HikesView_Previews: PreviewProvider {
    static var previews: some View {
        HikesView()
    }
}
