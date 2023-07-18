//
//  ViewModel.swift
//  Not_boring
//
//  Created by Oksenoyt on 04.07.2023.
//

import Foundation

enum TypeActivity: String {
    case education = "education"
    case recreational = "recreational"
    case social = "social"
    case diy = "diy"
    case charity = "charity"
    case cooking = "cooking"
    case relaxation = "relaxation"
    case music = "music"
    case busywork = "busywork"
    case person = "for one"
    case company = "for company"
    case general
}

class ViewModel: ObservableObject {
    private let networkManager = NetworkManager.shared

    @Published var activity: Activity?

    var participantTypeActivity: TypeActivity {
        print("получено", activity?.participants)
        return activity?.participants == 2 ? TypeActivity.company : TypeActivity.person
    }

    var typeActivity: TypeActivity {
        switch activity?.type {
        case "recreational":
            return TypeActivity.recreational
        case "social":
            return TypeActivity.social
        case "diy":
            return TypeActivity.diy
        case "charity":
            return TypeActivity.charity
        case "cooking":
            return TypeActivity.cooking
        case "relaxation":
            return TypeActivity.relaxation
        case "music":
            return TypeActivity.music
        case "busywork":
            return TypeActivity.busywork
        default:
            return TypeActivity.education
        }
    }

    func fetchData(typeActivity: TypeActivity) {
        let url = "https://www.boredapi.com/api/activity" + getUrl(activity: typeActivity)
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

    func saveActivityType(item: String) {
        print("получил для сохранения in activity", item)
        switch item {
        case TypeActivity.company.rawValue:
            print("было сохранено", activity?.participants)
            activity?.participants = 2
            print("сохранено", activity?.participants)
        case TypeActivity.person.rawValue:
            print("было сохранено", activity?.participants)
            activity?.participants = 1
            print("сохранено", activity?.participants)
        default:
            print("сохраняю в ", activity?.type, item)
            activity?.type = item
            print("сохранено", activity?.type)
        }
    }

    private func getUrl(activity: TypeActivity) -> String {
        var url = ""
        switch activity {
        case .education:
            url = "?type=education"
        case .recreational:
            url = "?type=recreational"
        case .social:
            url = "?type=social"
        case .diy:
            url = "?type=diy"
        case .charity:
            url = "?type=charity"
        case .cooking:
            url = "?type=cooking"
        case .relaxation:
            url = "?type=relaxation"
        case .music:
            url = "?type=music"
        case .busywork:
            url = "?type=busywork"
        case .person:
            url = "?participants=1"
        case .company:
            url = "?participants=2"
        case .general:
            url = "/"
        }
        return url
    }
}
