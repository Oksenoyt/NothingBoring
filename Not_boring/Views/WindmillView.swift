//
//  WindmillView.swift
//  Not_boring
//
//  Created by Oksenoyt on 12.07.2023.
//

import SwiftUI

struct WindmillView: View {
    @State private var rotationAngle: Angle = .degrees(0)
    
    var body: some View {
        HStack {
            Spacer()
            ZStack {
                Image("windmill")
                    .resizable()
                    .scaledToFit()
                Image("windmill2")
                    .resizable()
                    .scaledToFit()
                    .rotationEffect(rotationAngle, anchor: .center)
                    .offset(x: -12 ,y: -132)
            }
            .onAppear {
                withAnimation(Animation.linear(duration: 5.0).repeatForever(autoreverses: false)) {
                    rotationAngle = .degrees(360)
                }
            }
            .frame(width: 250)
            .opacity(0.7)
            .offset(y: -13)
        }
    }
}

struct WindmillView_Previews: PreviewProvider {
    static var previews: some View {
        WindmillView()
    }
}
