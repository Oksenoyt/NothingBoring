//
//  Activity.swift
//  Not_boring
//
//  Created by Oksenoyt on 03.07.2023.
//

import Foundation


struct Activity: Decodable {
    let activity: String
    let type: String
    let participants: Int
    let key: String
}

