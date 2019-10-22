//
//  Stacks.swift
//  SwiftUI Components Demo
//
//  Created by Michel Teixeira on 22/10/19.
//  Copyright © 2019 Michel Teixeira. All rights reserved.
//

import SwiftUI

struct Stacks: View {
    var body: some View {
        VStack {
            Image("img-12")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(50)
                .padding(.all)
                //.clipShape(Circle())

            Text("Hello Mike")
                .font(.largeTitle)
                .foregroundColor(.blue)

            Text("Hello Karen")
                .font(.title)
                .foregroundColor(.orange)

            Text("Hello Simba")

            HStack {
                Text("Left side")
                Text("Right side")
                    .padding(.all)
            }
        }
    }
}

struct Stacks_Previews: PreviewProvider {
    static var previews: some View {
        Stacks()
    }
}
