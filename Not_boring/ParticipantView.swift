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

//    @State var activity = "are you bored? press tte button"
    @StateObject private var viewModel = ViewModel()

    var body: some View {
        VStack {
            Spacer()
            Text(viewModel.activity?.activity ?? "")
            Spacer()
//            Text(activity)
            Spacer()
            PickerView(viewModel: viewModel, options: option)
            MainButtonView(typeActivity: typeActivity, viewModel: viewModel)
            Spacer()
        }
    }
}

struct ParticipantView_Previews: PreviewProvider {
    static var previews: some View {
        ParticipantView()
    }
}
