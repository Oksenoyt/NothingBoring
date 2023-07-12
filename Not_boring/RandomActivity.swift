//
//  PersonView.swift
//  Not_boring
//
//  Created by Oksenoyt on 02.07.2023.
//

import SwiftUI

struct RandomActivity: View {
    private let typeActivity = TypeActivity .general

    @State private var rotationAngle: Angle = .degrees(0)

    @StateObject private var viewModel = ViewModel()

    var body: some View {
        ZStack {
            Image("fon")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
                .opacity(0.9)
                .offset(y: 40)

            VStack {
                Spacer()
                Text(viewModel.activity?.activity ?? "")
                Spacer()
                Spacer()
                Spacer()
                HStack {
                    MainButtonView(typeActivity: typeActivity, viewModel: viewModel)
                    Spacer()
                }
                .offset(y: 4)
                .padding(25)
                Spacer()
                Spacer()
            }
            VStack {
                Spacer()
                Spacer()
                Spacer()
                Spacer()
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
                            .opacity(0.8)
                            .offset(y: -13)
                }
                Spacer()
                Spacer()
            }
        }
    }
}


struct PersonView_Previews: PreviewProvider {
    static var previews: some View {
        RandomActivity()
    }
}
