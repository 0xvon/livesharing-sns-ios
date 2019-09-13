//
//  LiveModel.swift
//  livesharing
//
//  Created by Masato TSUTSUMI on 2019/09/13.
//  Copyright © 2019 Masato TSUTSUMI. All rights reserved.
//

import Foundation
import Firebase

struct LiveModel {
    let id: String
    let title: String
    let artist: ArtistModel
    var setlist: [MusicModel]
    let place: String
    let startTime: Timestamp
    let endTime: Timestamp
    var isJoin: Bool
}
