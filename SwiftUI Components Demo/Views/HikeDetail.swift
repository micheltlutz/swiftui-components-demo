//
//  HikeDetail.swift
//  SwiftUI Components Demo
//
//  Created by Michel Teixeira on 22/10/19.
//  Copyright © 2019 Michel Teixeira. All rights reserved.
//

import SwiftUI

struct HikeDetail: View {
    let hike: Hike

    @State var zoomed = false

    var body: some View {
        VStack {
            Image(hike.imageURL)
                .resizable()
                .aspectRatio(contentMode: self.zoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation(.linear(duration: 2)) {
                        self.zoomed.toggle()
                    }
            }

            Text(hike.name)
                .font(.largeTitle)

        }.navigationBarTitle(Text(hike.name), displayMode: .inline)
    }
}

struct HikeDetail_Previews: PreviewProvider {
    static var previews: some View {
        HikeDetail(hike: Hike.all()[1])
    }
}
