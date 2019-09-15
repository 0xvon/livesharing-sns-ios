//
//  UserModel.swift
//  livesharing
//
//  Created by Masato TSUTSUMI on 2019/09/13.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import Foundation
import UIKit


struct UserModel {
    let id: String
    var displayName: String
    var username: String
    var avator: URL
    var biography: String
    var favoriteArtist: [ArtistModel]
    var liveSchedule: [LiveModel]
    var isFollowing: Bool
    var isFollower: Bool
    
//    init(data: Dictionary<String, Any>) {
//        self.id = data["id"] as! String
//        self.displayName = data["displayName"] as! String
//        self.username = data["username"] as! String
//        self.avator = data["avator"] as! URL
//        self.biography = data["biography"] as! String
//    }
}
