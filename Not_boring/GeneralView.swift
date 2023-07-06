//
//  GeneralView.swift
//  Not_boring
//
//  Created by Oksenoyt on 02.07.2023.
//

import SwiftUI

struct GeneralView: View {

    var body: some View {
            TabView {
                ZStack {
                    Image("fon")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .edgesIgnoringSafeArea(.all)
                        .opacity(0.9)
                    RandomActivity(typeActivity: .general)
                }
                    .tabItem {
                        Image(systemName: "circle.hexagonpath.fill")
                        Text("random activities")
                    }
                ZStack {
                    Image("fon")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .edgesIgnoringSafeArea(.all)
                    ParticipantView(typeActivity: .company)
                }
                    .tabItem {
                        HStack {
                            Image(systemName: "person.2")
                            Text("for one or company")
                                .foregroundColor(.white)
                        }
                    }
                ZStack {
                    Image("fon")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .edgesIgnoringSafeArea(.all)
                    TypeOfActivityView(typeActivity: .charity)
                }
                    .tabItem {
                        Image(systemName: "hand.tap.fill")
                        Text("by type of activity")
                    }
        }
            .tint(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GeneralView()
    }
}
