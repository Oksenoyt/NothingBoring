//
//  ParticipantView.swift
//  Not_boring
//
//  Created by Oksenoyt on 02.07.2023.
//

import SwiftUI

struct ParticipantView: View {
    private let option = ["for one", "for company"]

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
                .offset(y: 18)
                .padding(25)
                Spacer()
                Spacer()
            }
        }
    }
}

struct ParticipantView_Previews: PreviewProvider {
    static var previews: some View {
        ParticipantView()
    }
}
