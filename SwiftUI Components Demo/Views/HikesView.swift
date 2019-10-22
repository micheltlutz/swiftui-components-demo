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
        NavigationView {
            List(hikes) { hike in
                HikeCell(hike: hike)
            }
        .navigationBarTitle(Text("Hikings"))
        }
    }
}

struct HikesView_Previews: PreviewProvider {
    static var previews: some View {
        HikesView()
    }
}

struct HikeCell: View {
    let hike: Hike

    var body: some View {
        return NavigationLink(destination: HikeDetail(hike: hike)) {
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
