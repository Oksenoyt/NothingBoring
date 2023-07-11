//
//  TypeOfActivityView.swift
//  Not_boring
//
//  Created by Oksenoyt on 05.07.2023.
//

import SwiftUI

struct TypeOfActivityView: View {
    private let option =
    [
        "education",
        "recreational",
        "social",
        "diy",
        "charity",
        "cooking",
        "relaxation",
        "music",
        "busywork"
    ]

    private var typeActivity: TypeActivity {
        viewModel.participantTypeActivity
    }

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
                    PickerView(viewModel: viewModel, options: option)
//                        .offset(y: -18)
                }
                .padding(25)
                .offset(y: 18)
                Spacer()
                Spacer()
            }
        }
    }
}

struct TypeOfActivityView_Previews: PreviewProvider {
    static var previews: some View {
        TypeOfActivityView()
    }
}
