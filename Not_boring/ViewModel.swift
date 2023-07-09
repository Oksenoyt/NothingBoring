//
//  ViewModel.swift
//  Not_boring
//
//  Created by Oksenoyt on 04.07.2023.
//

import Foundation

enum TypeActivity: String {
    case education = "activity?type=education"
    case recreational = "activity?type=recreational"
    case social = "activity?type=social"
    case diy = "activity?type=diy"
    case charity = "activity?type=charity"
    case cooking = "activity?type=cooking"
    case relaxation = "activity?type=relaxation"
    case music = "activity?type=music"
    case busywork = "activity?type=busywork"
    case person = "activity?participants=1"
    case company = "activity?participants=2"
    case general = "activity/"
}

class ViewModel: ObservableObject {
    @Published var activity: Activity?

    var participantTypeActivity: TypeActivity {
        activity?.participants == 2 ? TypeActivity.company : TypeActivity.person
    }
    
    private let networkManager = NetworkManager.shared
    private var urlParticipants: String {
        activity?.participants == 1 ? TypeActivity.person.rawValue : TypeActivity.company.rawValue
    }

    func fetchData(typeActivity: TypeActivity) {
        let url = "https://www.boredapi.com/api/" + typeActivity.rawValue
        print(url)
        networkManager.fetchData(from: url) { result in
            switch result {
            case .success(let activity):
                print(activity.activity)
                self.activity = activity
            case .failure(let error):
                print(error)
            }
        }
    }
}
