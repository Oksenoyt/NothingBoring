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

                    RandomActivity()
                    .tabItem {
                        Image(systemName: "circle.hexagonpath.fill")
                        Text("random activities")
                    }

                    ParticipantView()
                    .tabItem {
                        HStack {
                            Image(systemName: "person.2")
                            Text("for one or company")
                        }
                    }

                    TypeOfActivityView()
                    .tabItem {
                        Image(systemName: "hand.tap.fill")
                        Text("by type of activity")
                    }

        }
            .tint(Color("lightGreen"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GeneralView()
    }
}
