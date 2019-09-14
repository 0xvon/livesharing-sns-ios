//
//  AccountModel.swift
//  livesharing
//
//  Created by Masato TSUTSUMI on 2019/09/13.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import Foundation
import Firebase

struct AccountModel {
    let id: String
    var displayName: String
    var username: String
    var avator: URL?
    var biography: String?
    var favoriteArtist: [ArtistModel]
    var liveSchedule: [LiveModel]
    
    init(data: [String: Any]) {
        self.id = data["id"] as! String
        self.displayName = "masato tsutsumi"
        self.username = "masatojames"
        self.avator = nil
        self.biography = nil
        self.favoriteArtist = []
        self.liveSchedule = []
    }
}
