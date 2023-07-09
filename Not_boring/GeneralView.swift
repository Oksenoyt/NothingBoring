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
                    RandomActivity()
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
                    ParticipantView()
                }
                    .tabItem {
                        HStack {
                            Image(systemName: "person.2")
                            Text("for one or company")
                        }
                    }
                ZStack {
                    Image("fon")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .edgesIgnoringSafeArea(.all)
                    TypeOfActivityView()
                }
                    .tabItem {
                        Image(systemName: "hand.tap.fill")
                        Text("by type of activity")
                    }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GeneralView()
    }
}
